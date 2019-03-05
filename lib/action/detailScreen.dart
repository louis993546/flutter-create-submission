import '../model.dart';

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