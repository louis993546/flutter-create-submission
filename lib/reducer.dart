import 'state.dart';
import 'action.dart';

AppState appReducer(AppState state, dynamic action) {
  if (action is ClickAddRecordButton) {
    state.showAddRecordScreen = true;
    return state;
  } else if (action is ClickRecord) {
    state.currentlyViewingRecord = action.record;
    return state;
  } else if (action is ClickAddDashboardConfigButton) {
    state.showAddDashboardConfigScreen = true;
    return state;
  } else if (action is ClickDismissAddDashboardConfigButton) {
    state.showAddDashboardConfigScreen = false;
    return state;
  } else if (action is ClickDeleteRecordButton) {
    state.showDeleteRecordConfirmationModal = true;
    return state;
  } else if (action is ClickConfirmDeleteRecordButton) {
    //TODO maybe this should have been handled by middleware?
    return state;
  } else if (action is ClickCancelDeleteRecordButton) {
    state.showDeleteRecordConfirmationModal = false;
    return state;
  } else if (action is ClickSaveRecordButton) {
    //TODO maybe this should have been handled by middleware?
    return state;
  } else {
    //TODO how to get the Logger?
    return state;
  }
}
