import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TBD',
      home: Scaffold(
        appBar: AppBar(
          title: Text('App Name TBD'),
        ),
        body: Center(
          child: Text('Something'),
        ),
      ),
    );
  }
}

class RecordTile extends StatelessWidget {
  final Record _record;
  final DashboardConfig _dashboardConfig;

  RecordTile(this._record, this._dashboardConfig);

  Iterable<String> test() {
    return _dashboardConfig.columns.map((column) {
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

enum Action { clickAddRecord }

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
