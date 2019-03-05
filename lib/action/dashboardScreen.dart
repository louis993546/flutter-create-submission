import '../model.dart';

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