// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leaves.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Leaves _$$_LeavesFromJson(Map<String, dynamic> json) => _$_Leaves(
      annualLeave: json['annual_leave'] as int? ?? 0,
      remainingVacation: json['remaining_vacation'] as int? ?? 0,
      requestedLeave: json['requested_leave'] as int? ?? 0,
      carryOver: json['carry_over'] as int? ?? 0,
      sickDays: json['sick_days'] as int? ?? 0,
      leaveRequests: json['leave_requests'],
    );

Map<String, dynamic> _$$_LeavesToJson(_$_Leaves instance) => <String, dynamic>{
      'annual_leave': instance.annualLeave,
      'remaining_vacation': instance.remainingVacation,
      'requested_leave': instance.requestedLeave,
      'carry_over': instance.carryOver,
      'sick_days': instance.sickDays,
      'leave_requests': instance.leaveRequests,
    };
