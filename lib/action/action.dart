// TODO split this up by screen

import '../model.dart';

class ClickAddRecordButton {}

class ClickRecord {
  Record record;

  ClickRecord(this.record);
}

class ClickAddDashboardConfigButton {}

//TODO maybe this action will be the same for edit as well?
class ClickDismissAddDashboardConfigButton {}

class ClickEditDashboardConfigButton {
  DashboardConfig dashboardConfig;

  ClickEditDashboardConfigButton(this.dashboardConfig);
}

class ClickDeleteRecordButton {}

class ClickConfirmDeleteRecordButton {
  Record record;

  ClickConfirmDeleteRecordButton(this.record);
}

class ClickCancelDeleteRecordButton {}

class ClickSaveRecordButton {
  Record record;

  ClickSaveRecordButton(this.record);
}

//TODO figure out how many "dismiss" action exists for add/edit record