import 'package:async_redux/async_redux.dart';
import 'package:final_capstone/apis/leaves_api.dart';
import 'package:final_capstone/models/leave_request.dart';
import 'package:final_capstone/state/actions/actions_loading.dart';
import 'package:final_capstone/state/app_state.dart';

class SendLeaveRequestAction extends ReduxAction<AppState> {
  final LeaveRequest leaveRequest;

  SendLeaveRequestAction({required this.leaveRequest});

  @override
  Future<AppState?> reduce() async {
    try {
      await LeavesApi.applyLeave(leaveRequest);
    } catch (e) {
      rethrow;
    }
    return null;
  }

  @override
  void before() => dispatch(LoadingAction(isLoading: true));

  @override
  void after() => dispatch(LoadingAction(isLoading: false));
}

class GetLeaveRequestsAction extends ReduxAction<AppState> {
  @override
  Future<AppState> reduce() async {
    final leaveRequests = await LeavesApi.fetchLeaveRequests();
    return state.copyWith(leaveRequests: leaveRequests);
  }

  @override
  void before() => dispatch(LoadingAction(isLoading: true));

  @override
  void after() => dispatch(LoadingAction(isLoading: false));
}
