// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppState _$$_AppStateFromJson(Map<String, dynamic> json) => _$_AppState(
      isLoading: json['isLoading'] as bool? ?? false,
      myProfile: Profile.fromJson(json['myProfile'] as Map<String, dynamic>),
      supervisorProfile:
          Profile.fromJson(json['supervisorProfile'] as Map<String, dynamic>),
      associatesProfiles: (json['associatesProfiles'] as List<dynamic>)
          .map((e) => Profile.fromJson(e as Map<String, dynamic>))
          .toList(),
      allProfiles: (json['allProfiles'] as List<dynamic>)
          .map((e) => Profile.fromJson(e as Map<String, dynamic>))
          .toList(),
      leaveRequests: (json['leaveRequests'] as List<dynamic>?)
          ?.map((e) => LeaveRequest.fromJson(e as Map<String, dynamic>))
          .toList(),
      timeRecords: (json['timeRecords'] as List<dynamic>?)
          ?.map((e) => TimeRecord.fromJson(e as Map<String, dynamic>))
          .toList(),
      menuIndex: json['menuIndex'] as int? ?? 0,
    );

Map<String, dynamic> _$$_AppStateToJson(_$_AppState instance) =>
    <String, dynamic>{
      'isLoading': instance.isLoading,
      'myProfile': instance.myProfile,
      'supervisorProfile': instance.supervisorProfile,
      'associatesProfiles': instance.associatesProfiles,
      'allProfiles': instance.allProfiles,
      'leaveRequests': instance.leaveRequests,
      'timeRecords': instance.timeRecords,
      'menuIndex': instance.menuIndex,
    };
