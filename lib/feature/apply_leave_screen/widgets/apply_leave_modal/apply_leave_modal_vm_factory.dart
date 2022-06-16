import 'package:final_capstone/feature/apply_leave_screen/widgets/apply_leave_modal/apply_leave_modal_connector.dart';
import 'package:final_capstone/models/leave_request.dart';
import 'package:final_capstone/state/actions/action_leaves.dart';
import 'package:final_capstone/state/actions/actions_profiles.dart';
import 'package:final_capstone/state/app_state.dart';
import 'package:async_redux/async_redux.dart';
import 'package:final_capstone/models/profile.dart';

class ApplyLeaveModalFactory
    extends VmFactory<AppState, ApplyLeaveModalConnector> {
  @override
  Vm fromStore() {
    return ApplyLeaveModalVM(
      myProfile: state.myProfile,
      associatesProfiles: state.associatesProfiles,
      sendLeaveRequest: (leaveRequest) {
        dispatch(SendLeaveRequestAction(leaveRequest: leaveRequest));
        dispatch(GetLeaveRequestsAction());
        dispatch(GetInitialProfilesAction());
      },
      isSending: state.isLoading,
      leaveRequests: state.leaveRequests,
    );
  }
}

class ApplyLeaveModalVM extends Vm {
  final Profile myProfile;
  final List<Profile> associatesProfiles;
  final Function(LeaveRequest leaveRequest) sendLeaveRequest;
  final bool isSending;
  final List<LeaveRequest>? leaveRequests;

  ApplyLeaveModalVM({
    required this.myProfile,
    required this.associatesProfiles,
    required this.sendLeaveRequest,
    required this.isSending,
    required this.leaveRequests,
  }) : super(equals: [
          myProfile,
          associatesProfiles,
          isSending,
          leaveRequests,
        ]);
}
