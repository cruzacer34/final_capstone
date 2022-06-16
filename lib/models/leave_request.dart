import 'package:final_capstone/models/profile.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'leave_request.freezed.dart';

part 'leave_request.g.dart';

@freezed
abstract class LeaveRequest with _$LeaveRequest {
  factory LeaveRequest({
    @JsonKey(name: 'notes') String? notes,
    @JsonKey(name: 'type_of_leave') required String typeOfLeave,
    @JsonKey(name: 'type_of_day') required String typeOfDay,
    @JsonKey(name: 'substitute') required Profile chosenSubstitute,
    @JsonKey(name: 'days') required List<DateTime> days,
  }) = _LeaveRequest;

  factory LeaveRequest.fromJson(Map<String, dynamic> json) =>
      _$LeaveRequestFromJson(json);
}
