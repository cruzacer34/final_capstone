import 'package:final_capstone/feature/time_tracking/custom_timeline_connector.dart';
import 'package:final_capstone/models/time_record.dart';
import 'package:final_capstone/state/app_state.dart';
import 'package:async_redux/async_redux.dart';

class CustomTimelineFactory
    extends VmFactory<AppState, CustomTimelineConnector> {
  @override
  Vm fromStore() {
    return CustomTimelineVM(timeRecords: state.timeRecords);
  }
}

class CustomTimelineVM extends Vm {
  final List<TimeRecord>? timeRecords;

  CustomTimelineVM({
    required this.timeRecords,
  }) : super(equals: [timeRecords]);
}
