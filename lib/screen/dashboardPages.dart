import 'package:flutter/material.dart';
import 'package:flutter_create_submission/action/creator.dart';
import 'package:flutter_create_submission/state.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class DashboardPages extends StatelessWidget {
  const DashboardPages({
    Key key,
    @required this.store,
  }) : super(key: key);

  final Store<AppState> store;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StoreConnector<State, State>(
          converter: (something) => something.state,
          builder: (context, state) => Text(state.toString())),
        FlatButton(
            onPressed: () =>
                store.dispatch(ActionCreator.clickAddRecordButton()),
            child: Text('Button'))
      ],
    );
  }
}