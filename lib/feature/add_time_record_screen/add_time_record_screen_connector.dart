import 'package:async_redux/async_redux.dart';
import 'package:final_capstone/feature/add_time_record_screen/add_time_record_screen.dart';
import 'package:final_capstone/feature/add_time_record_screen/add_time_record_screen_vm_factory.dart';
import 'package:final_capstone/state/actions/actions_profiles.dart';
import 'package:final_capstone/state/app_state.dart';
import 'package:flutter/material.dart';

class AddTimeRecordScreenConnector extends StatelessWidget {
  static const String route = '/add-time-record-screen';
  final DateTime? chosenDate;

  const AddTimeRecordScreenConnector({
    Key? key,
    required this.chosenDate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AddTimeRecordScreenVM>(
      onInit: (store) => store.dispatch(GetAllProfiles()),
      vm: () => AddTimeRecordScreenFactory(),
      builder: (context, vm) => AddTimeRecordScreen(
        isGettingAllProfiles: vm.isGettingAllProfiles,
        myProfile: vm.myProfile,
        allProfiles: vm.allProfiles,
        chosenDate: chosenDate,
        addTimeRecord: vm.addTimeRecord,
        isSending: vm.isSending,
      ),
    );
  }
}
