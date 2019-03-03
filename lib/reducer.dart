import 'state.dart';
import 'action.dart';

AppState appReducer(AppState state, dynamic action) {
  if (action is ClickAddRecordButton) {
    return state;
  } else if (action is ClickRecord) {
    return state;
  } else if (action is ClickAddDashboardConfigButton) {
    return state;
  } else if (action is ClickDeleteRecordButton) {
    return state;
  } else if (action is ClickSaveRecordButton) {
    return state;
  } else {
    return state;
  }
}
