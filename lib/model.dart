class Record {
  DateTime startDateTime;
  double distanceMeters; //TODO this is just an average
  int strokePerMinute; //TODO this is just an average
  Duration duration; //TODO this is just the total
  double resistance;
  int heartRate; //TODO this is just an average

  Record(this.startDateTime, this.distanceMeters, this.strokePerMinute,
      this.duration, this.resistance, this.heartRate);

  Duration calculatePer500m() => duration * (500 / distanceMeters);
}

enum DashboardColumn {
  date,
  dateTime,
  duration,
  meter,
  per500m,
  strokePerMinute,
  heartRate,
  resistance,
}

class DashboardConfig {
  String id;
  String title;
  List<DashboardColumn> columns;
  //TODO figure out how to represent filters

  DashboardConfig(this.id, this.title, this.columns);
}
