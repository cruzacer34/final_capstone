import 'package:async_redux/async_redux.dart';
import 'package:final_capstone/feature/apply_leave_screen/widgets/apply_leave_modal/apply_leave_modal.dart';
import 'package:final_capstone/feature/apply_leave_screen/widgets/apply_leave_modal/apply_leave_modal_vm_factory.dart';
import 'package:final_capstone/state/actions/actions_profiles.dart';
import 'package:final_capstone/state/app_state.dart';
import 'package:flutter/material.dart';

class ApplyLeaveModalConnector extends StatelessWidget {
  final DateTime startDate;
  final DateTime? endDate;
  final bool isApplying;

  const ApplyLeaveModalConnector({
    Key? key,
    required this.startDate,
    this.endDate,
    required this.isApplying,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, ApplyLeaveModalVM>(
      onInit: (store) => store.dispatch(GetAssociatesProfilesAction()),
      vm: () => ApplyLeaveModalFactory(),
      builder: (context, vm) => ApplyLeaveModal(
        myProfile: vm.myProfile,
        associatesProfiles: vm.associatesProfiles,
        startDate: startDate,
        endDate: endDate,
        sendLeaveRequest: vm.sendLeaveRequest,
        isSending: vm.isSending,
        leaveRequests: vm.leaveRequests,
        isApplying: isApplying,
      ),
    );
  }
}
