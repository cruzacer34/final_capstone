import 'package:async_redux/async_redux.dart';
import 'package:final_capstone/feature/apply_leave_screen/apply_leave_screen.dart';
import 'package:final_capstone/feature/apply_leave_screen/apply_leave_screen_vm_factory.dart';
import 'package:final_capstone/state/actions/action_leaves.dart';
import 'package:final_capstone/state/app_state.dart';
import 'package:flutter/material.dart';

class ApplyLeaveScreenConnector extends StatelessWidget {
  static const String route = '/apply-leave-screen';

  const ApplyLeaveScreenConnector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, ApplyLeaveScreenVM>(
      onInit: (store) => store.dispatch(GetLeaveRequestsAction()),
      vm: () => ApplyLeaveScreenFactory(),
      builder: (context, vm) => ApplyLeaveScreen(
        leaveRequests: vm.leaveRequests,
        isGettingLeaveRequests: vm.isGettingLeaveRequests,
      ),
    );
  }
}
