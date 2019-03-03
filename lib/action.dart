import 'model.dart';

class ClickAddRecordButton {}

class ClickRecord {
  Record record;

  ClickRecord(this.record);
}

class ClickAddDashboardConfigButton {}

class ClickEditDashboardConfigButton {
  DashboardConfig dashboardConfig;

  ClickEditDashboardConfigButton(this.dashboardConfig);
}

class ClickDeleteRecordButton {
  Record record;

  ClickDeleteRecordButton(this.record);
}

class ClickSaveRecordButton {
  Record record;

  ClickSaveRecordButton(this.record);
}

class ActionCreator {
  static ClickAddRecordButton clickAddRecordButton() => ClickAddRecordButton();

  static ClickRecord clickRecord(Record record) => ClickRecord(record);

  static ClickAddDashboardConfigButton clickAddDashboardConfigButton() =>
      ClickAddDashboardConfigButton();

  static ClickEditDashboardConfigButton clickEditDashboardConfigButton(
          DashboardConfig dashboardConfig) =>
      ClickEditDashboardConfigButton(dashboardConfig);

  static ClickDeleteRecordButton clickDeleteRecordButton(Record record) =>
      ClickDeleteRecordButton(record);

  static ClickSaveRecordButton clicksaveRecordButton(Record record) =>
      ClickSaveRecordButton(record);
}
