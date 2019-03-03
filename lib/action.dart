import 'model.dart';

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

class ClickDeleteRecordButton {
  Record record;

  ClickDeleteRecordButton(this.record);
}

class ClickConfirmDeleteRecordButton {}

class ClickCancelDeleteRecordButton {}

class ClickSaveRecordButton {
  Record record;

  ClickSaveRecordButton(this.record);
}

//TODO figure out how many "dismiss" action exists for add/edit record

class ActionCreator {
  static ClickAddRecordButton clickAddRecordButton() => ClickAddRecordButton();

  static ClickRecord clickRecord(Record record) => ClickRecord(record);

  static ClickAddDashboardConfigButton clickAddDashboardConfigButton() =>
      ClickAddDashboardConfigButton();

  static ClickDismissAddDashboardConfigButton
      clickDismissAddDashboardConfigButton() =>
          ClickDismissAddDashboardConfigButton();

  static ClickEditDashboardConfigButton clickEditDashboardConfigButton(
          DashboardConfig dashboardConfig) =>
      ClickEditDashboardConfigButton(dashboardConfig);

  static ClickDeleteRecordButton clickDeleteRecordButton(Record record) =>
      ClickDeleteRecordButton(record);

  static ClickConfirmDeleteRecordButton clickConfirmDeleteRecordButton() =>
      ClickConfirmDeleteRecordButton();

  static ClickCancelDeleteRecordButton clickCancelDeleteRecordButton() =>
      ClickCancelDeleteRecordButton();

  static ClickSaveRecordButton clicksaveRecordButton(Record record) =>
      ClickSaveRecordButton(record);
}
