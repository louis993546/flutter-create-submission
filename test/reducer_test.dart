import 'package:flutter_create_submission/action.dart';
import 'package:flutter_create_submission/state.dart';
import 'package:flutter_create_submission/reducer.dart';
import 'package:test/test.dart';

import 'mock_modal.dart';

void main() {
  test('''\n
GIVEN: N/A
WHEN: click add record button
THEN: show add record screen
  ''', () {
    var state = AppState.initialState();
    var action = ActionCreator.clickAddRecordButton();

    var output = appReducer(state, action);

    expect(output.showAddRecordScreen, equals(true));
  });

  test('''\n
GIVEN: N/A
WHEN: click on a record
THEN: open record detail screen of that record
  ''', () {
    var mockRecord = MockRecord();
    var state = AppState.initialState();
    var action = ActionCreator.clickRecord(mockRecord);

    var output = appReducer(state, action);

    expect(output.currentlyViewingRecord, equals(mockRecord));
    expect(output.showRecordDetailScreen, equals(true));
  });

  test('''\n
GIVEN: N/A
WHEN: click add dashboard button
THEN: show \'add new dashbaord\' screen
  ''', () {
    var state = AppState.initialState();
    var action = ActionCreator.clickAddDashboardConfigButton();

    var output = appReducer(state, action);

    expect(output.showAddDashboardConfigScreen, equals(true));
  });

  test('''\n
GIVEN: N/A
WHEN: click \' close\' button when adding dashboard
THEN: show \'are you sure, nothing will be save\' modal
  ''', () {
    var state = AppState.initialState();
    var action = ActionCreator.clickDismissAddDashboardConfigButton();

    var output = appReducer(state, action);

    //TODO I need a new bool in the state first
    // expect(output.showAddDashboardConfigScreen, equals(true));
  });

  
}
