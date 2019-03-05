import 'package:flutter/material.dart';
import 'package:flutter_create_submission/screen/dashboardPages.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:redux_logging/redux_logging.dart';
import 'reducer/reducer.dart';
import 'state.dart';

void main() {
  final store = new Store<AppState>(
    appReducer,
    initialState: AppState.initialState(),
    middleware: [
      LoggingMiddleware.printer(),
      thunkMiddleware,
    ],
  );

  runApp(MyApp(store));
}

class MyApp extends StatelessWidget {
  final Store<AppState> store;

  MyApp(this.store);

  @override
  Widget build(BuildContext context) => StoreProvider<AppState>(
        store: store,
        child: MaterialApp(
          title: 'TBD',
          home: Scaffold(
            //TODO this needs to be super customize-able
            appBar: AppBar(
              title: Text('App Name TBD'),
            ),
            body: new AppBody(store: store),
          ),
        ),
      );
}

class AppBody extends StatelessWidget {
  const AppBody({
    Key key,
    @required this.store,
  }) : super(key: key);

  final Store<AppState> store;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<State, State>(
      converter: (something) => something.state,
      builder: (context, state) {
        //TODO switch which screen to show based on the state
        return DashboardPages(store: store);
      },
    );
  }
}