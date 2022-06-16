// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TimeRecord _$$_TimeRecordFromJson(Map<String, dynamic> json) =>
    _$_TimeRecord(
      type: json['type'] as String? ?? 'Arbeitszeit',
      category: json['category'] as String,
      projectNumber: json['project_number'] as int,
      includedAssociates: (json['included_associates'] as List<dynamic>?)
          ?.map((e) => Profile.fromJson(e as Map<String, dynamic>))
          .toList(),
      startTime: DateTime.parse(json['start_time'] as String),
      endTime: DateTime.parse(json['end_time'] as String),
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$$_TimeRecordToJson(_$_TimeRecord instance) =>
    <String, dynamic>{
      'type': instance.type,
      'category': instance.category,
      'project_number': instance.projectNumber,
      'included_associates': instance.includedAssociates,
      'start_time': instance.startTime.toIso8601String(),
      'end_time': instance.endTime.toIso8601String(),
      'notes': instance.notes,
    };
