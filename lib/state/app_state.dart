import 'package:final_capstone/models/leave_request.dart';
import 'package:final_capstone/models/time_record.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:final_capstone/models/profile.dart';

part 'app_state.freezed.dart';

part 'app_state.g.dart';

@freezed
class AppState with _$AppState {
  factory AppState({
    @Default(false) bool isLoading,
    required Profile myProfile,
    required Profile supervisorProfile,
    required List<Profile> associatesProfiles,
    required List<Profile> allProfiles,
    List<LeaveRequest>? leaveRequests,
    List<TimeRecord>? timeRecords,
    @Default(0) int menuIndex,
  }) = _AppState;

  factory AppState.initialState() => AppState(
        myProfile: Profile(),
        supervisorProfile: Profile(),
        associatesProfiles: [Profile()],
        allProfiles: [Profile()],
      );

  factory AppState.fromJson(Map<String, dynamic> json) =>
      _$AppStateFromJson(json);
}
