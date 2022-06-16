import 'package:final_capstone/feature/apply_leave_screen/apply_leave_screen_connector.dart';
import 'package:final_capstone/models/leave_request.dart';
import 'package:final_capstone/state/app_state.dart';
import 'package:async_redux/async_redux.dart';

class ApplyLeaveScreenFactory
    extends VmFactory<AppState, ApplyLeaveScreenConnector> {
  @override
  Vm fromStore() {
    return ApplyLeaveScreenVM(
      leaveRequests: state.leaveRequests,
      isGettingLeaveRequests: state.isLoading,
    );
  }
}

class ApplyLeaveScreenVM extends Vm {
  final List<LeaveRequest>? leaveRequests;
  final bool isGettingLeaveRequests;

  ApplyLeaveScreenVM({
    required this.leaveRequests,
    required this.isGettingLeaveRequests,
  }) : super(equals: [
          leaveRequests,
          isGettingLeaveRequests,
        ]);
}
