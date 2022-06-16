// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leave_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LeaveRequest _$$_LeaveRequestFromJson(Map<String, dynamic> json) =>
    _$_LeaveRequest(
      notes: json['notes'] as String?,
      typeOfLeave: json['type_of_leave'] as String,
      typeOfDay: json['type_of_day'] as String,
      chosenSubstitute:
          Profile.fromJson(json['substitute'] as Map<String, dynamic>),
      days: (json['days'] as List<dynamic>)
          .map((e) => DateTime.parse(e as String))
          .toList(),
    );

Map<String, dynamic> _$$_LeaveRequestToJson(_$_LeaveRequest instance) =>
    <String, dynamic>{
      'notes': instance.notes,
      'type_of_leave': instance.typeOfLeave,
      'type_of_day': instance.typeOfDay,
      'substitute': instance.chosenSubstitute,
      'days': instance.days.map((e) => e.toIso8601String()).toList(),
    };
