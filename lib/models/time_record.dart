import 'package:final_capstone/models/profile.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'time_record.freezed.dart';

part 'time_record.g.dart';

@freezed
abstract class TimeRecord with _$TimeRecord {
  factory TimeRecord({
    @Default('Arbeitszeit') @JsonKey(name: 'type') String type,
    @JsonKey(name: 'category') required String category,
    @JsonKey(name: 'project_number') required int projectNumber,
    @JsonKey(name: 'included_associates') List<Profile>? includedAssociates,
    @JsonKey(name: 'start_time') required DateTime startTime,
    @JsonKey(name: 'end_time') required DateTime endTime,
    @JsonKey(name: 'notes') String? notes,
  }) = _TimeRecord;

  factory TimeRecord.fromJson(Map<String, dynamic> json) =>
      _$TimeRecordFromJson(json);
}
