import 'package:flutter/material.dart';
import '../model.dart';

class RecordTile extends StatelessWidget {
  final Record _record;
  final List<DashboardColumn> _columns;

  RecordTile(this._record, this._columns);

  RecordTile.secondConstructor(Record record, DashboardConfig dashboardConfig)
      : this(record, dashboardConfig.columns);

  Iterable<String> test() {
    return _columns.map((column) {
      String outputString;
      switch (column) {
        case DashboardColumn.date:
          outputString = _record.startDateTime.toIso8601String();
          break;
        case DashboardColumn.dateTime:
          outputString = _record.startDateTime.toIso8601String();
          break;
        case DashboardColumn.duration:
          outputString = _record.duration.toString();
          break;
        case DashboardColumn.meter:
          outputString = _record.distanceMeters.toString();
          break;
        case DashboardColumn.per500m:
          outputString = _record.calculatePer500m().toString();
          break;
        case DashboardColumn.heartRate:
          outputString = "TODO";
          break;
        case DashboardColumn.strokePerMinute:
          outputString = _record.strokePerMinute.toString();
          break;
        case DashboardColumn.resistance:
          outputString = _record.resistance.toString();
          break;
      }
      return outputString;
    });
  }

  @override
  Widget build(BuildContext context) {
    var displayStrings = test();
    return Row(
      children: List.from(displayStrings.map((text) => Text(text))),
    );
  }
}
