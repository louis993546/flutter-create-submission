import 'main.dart';
import 'package:uuid/uuid.dart';

class AppState {
  List<DashboardConfig> _dashboardConfigList;
  DateTime _previousSessionStartTime;
  String _previousSessionVersionCode;
  Map<Uuid, List<Record>> _recordsPerPage;
  Record _currentlyViewingRecord;

  AppState.initialState() {
    _dashboardConfigList = [];
    _previousSessionStartTime = null;
    _previousSessionVersionCode = null;
    _recordsPerPage = {};
    _currentlyViewingRecord = null;
  }
}
