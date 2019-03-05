import '../model.dart';
import 'action.dart';
import 'dashboardScreen.dart';
import 'detailScreen.dart';

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

  static ClickDeleteRecordButton clickDeleteRecordButton() =>
      ClickDeleteRecordButton();

  static ClickCancelDeleteRecordButton clickCancelDeleteRecordButton() =>
      ClickCancelDeleteRecordButton();

  //TODO these 2 shouldn't exists: they should be handled by middleware
  // static ClickConfirmDeleteRecordButton clickConfirmDeleteRecordButton(
  //         Record record) =>
  //     ClickConfirmDeleteRecordButton(record);

  // static ClickSaveRecordButton clickSaveRecordButton(Record record) =>
  //     ClickSaveRecordButton(record);
}
