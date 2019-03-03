import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'reducer.dart';
import 'state.dart';
import 'action.dart';

void main() {
  final store = new Store<AppState>(
    appReducer,
    initialState: AppState.initialState(),
    middleware: [thunkMiddleware],
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
            appBar: AppBar(
              title: Text('App Name TBD'),
            ),
            body: Column(
              children: [
                StoreConnector<State, State>(
                    builder: (context, state) => Text(state.toString()),
                    converter: (something) => something.state),
                FlatButton(
                    onPressed: () =>
                        store.dispatch(ActionCreator.clickAddRecordButton()),
                    child: Text('Button'))
              ],
            ),
          ),
        ),
      );
}
