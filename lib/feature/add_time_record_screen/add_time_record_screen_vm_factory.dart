import 'package:final_capstone/feature/add_time_record_screen/add_time_record_screen_connector.dart';
import 'package:final_capstone/models/profile.dart';
import 'package:final_capstone/models/time_record.dart';
import 'package:final_capstone/state/actions/actions_time_record.dart';
import 'package:final_capstone/state/app_state.dart';
import 'package:async_redux/async_redux.dart';

class AddTimeRecordScreenFactory
    extends VmFactory<AppState, AddTimeRecordScreenConnector> {
  @override
  Vm fromStore() {
    return AddTimeRecordScreenVM(
      isGettingAllProfiles: state.isLoading,
      myProfile: state.myProfile,
      allProfiles: state.allProfiles,
      addTimeRecord: (timeRecord, today) {
        dispatch(
          AddTimeRecordAction(
            timeRecord: timeRecord,
            today: today,
          ),
        );
        dispatch(GetTimeRecordsAction());
      },
      isSending: state.isLoading,
    );
  }
}

class AddTimeRecordScreenVM extends Vm {
  final bool isGettingAllProfiles;
  final Profile myProfile;
  final List<Profile> allProfiles;
  final Function(TimeRecord timeRecord, DateTime today) addTimeRecord;
  final bool isSending;

  AddTimeRecordScreenVM({
    required this.isGettingAllProfiles,
    required this.myProfile,
    required this.allProfiles,
    required this.addTimeRecord,
    required this.isSending,
  }) : super(equals: [
          isGettingAllProfiles,
          myProfile,
          allProfiles,
          isSending,
        ]);
}
