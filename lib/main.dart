import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

enum Action { clickAddRecord }

enum State { One, Two }

State appReducer(State state, dynamic action) {
  if (action == Action.clickAddRecord) {
    return State.Two;
  }

  return state;
}

void main() {
  final store = new Store<State>(appReducer, initialState: State.One);

  runApp(MyApp(store));
}

class MyApp extends StatelessWidget {
  final Store<State> store;

  MyApp(this.store);

  @override
  Widget build(BuildContext context) => StoreProvider<State>(
        store: store,
        child: MaterialApp(
          title: 'TBD',
          home: Scaffold(
            appBar: AppBar(
              title: Text('App Name TBD'),
            ),
            body: Column(
              children: [
                StoreConnector<State, State>(
                    builder: (context, state) => Text(state.toString()),
                    converter: (something) => something.state),
                FlatButton(
                    onPressed: () => store.dispatch(Action.clickAddRecord),
                    child: Text('Button'))
              ],
            ),
          ),
        ),
      );
}

class RecordTile extends StatelessWidget {
  final Record _record;
  final List<DashboardColumn> _columns;

  RecordTile(this._record, this._columns);

  RecordTile.secondConstructor(Record record, DashboardConfig dashboardConfig)
      : this(record, dashboardConfig.columns);

  Iterable<String> test() {
    return _columns.map((column) {
      String outputString;
      switch (column) {
        case DashboardColumn.date:
          outputString = _record.startDateTime.toIso8601String();
          break;
        case DashboardColumn.dateTime:
          outputString = _record.startDateTime.toIso8601String();
          break;
        case DashboardColumn.duration:
          outputString = _record.duration.toString();
          break;
        case DashboardColumn.meter:
          outputString = _record.distanceMeters.toString();
          break;
        case DashboardColumn.per500m:
          outputString = _record.calculatePer500m().toString();
          break;
        case DashboardColumn.heartRate:
          outputString = "TODO";
          break;
        case DashboardColumn.strokePerMinute:
          outputString = _record.strokePerMinute.toString();
          break;
        case DashboardColumn.resistance:
          outputString = _record.resistance.toString();
          break;
      }
      return outputString;
    });
  }

  @override
  Widget build(BuildContext context) {
    var displayStrings = test();
    return Row(
      children: List.from(displayStrings.map((text) => Text(text))),
    );
  }
}

class Record {
  DateTime startDateTime;
  double distanceMeters; //TODO this is just an average
  int strokePerMinute; //TODO this is just an average
  Duration duration; //TODO this is just the total
  double resistance;
  int heartRate; //TODO this is just an average

  Record(this.startDateTime, this.distanceMeters, this.strokePerMinute,
      this.duration, this.resistance, this.heartRate);

  Duration calculatePer500m() => duration * (500 / distanceMeters);
}

enum DashboardColumn {
  date,
  dateTime,
  duration,
  meter,
  per500m,
  strokePerMinute,
  heartRate,
  resistance,
}

class DashboardConfig {
  String title;
  List<DashboardColumn> columns;

  DashboardConfig(this.title, this.columns);
}
