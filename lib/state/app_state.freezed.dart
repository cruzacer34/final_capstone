// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppState _$AppStateFromJson(Map<String, dynamic> json) {
  return _AppState.fromJson(json);
}

/// @nodoc
mixin _$AppState {
  bool get isLoading => throw _privateConstructorUsedError;
  Profile get myProfile => throw _privateConstructorUsedError;
  Profile get supervisorProfile => throw _privateConstructorUsedError;
  List<Profile> get associatesProfiles => throw _privateConstructorUsedError;
  List<Profile> get allProfiles => throw _privateConstructorUsedError;
  List<LeaveRequest>? get leaveRequests => throw _privateConstructorUsedError;
  List<TimeRecord>? get timeRecords => throw _privateConstructorUsedError;
  int get menuIndex => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      Profile myProfile,
      Profile supervisorProfile,
      List<Profile> associatesProfiles,
      List<Profile> allProfiles,
      List<LeaveRequest>? leaveRequests,
      List<TimeRecord>? timeRecords,
      int menuIndex});

  $ProfileCopyWith<$Res> get myProfile;
  $ProfileCopyWith<$Res> get supervisorProfile;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res> implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  final AppState _value;
  // ignore: unused_field
  final $Res Function(AppState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? myProfile = freezed,
    Object? supervisorProfile = freezed,
    Object? associatesProfiles = freezed,
    Object? allProfiles = freezed,
    Object? leaveRequests = freezed,
    Object? timeRecords = freezed,
    Object? menuIndex = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      myProfile: myProfile == freezed
          ? _value.myProfile
          : myProfile // ignore: cast_nullable_to_non_nullable
              as Profile,
      supervisorProfile: supervisorProfile == freezed
          ? _value.supervisorProfile
          : supervisorProfile // ignore: cast_nullable_to_non_nullable
              as Profile,
      associatesProfiles: associatesProfiles == freezed
          ? _value.associatesProfiles
          : associatesProfiles // ignore: cast_nullable_to_non_nullable
              as List<Profile>,
      allProfiles: allProfiles == freezed
          ? _value.allProfiles
          : allProfiles // ignore: cast_nullable_to_non_nullable
              as List<Profile>,
      leaveRequests: leaveRequests == freezed
          ? _value.leaveRequests
          : leaveRequests // ignore: cast_nullable_to_non_nullable
              as List<LeaveRequest>?,
      timeRecords: timeRecords == freezed
          ? _value.timeRecords
          : timeRecords // ignore: cast_nullable_to_non_nullable
              as List<TimeRecord>?,
      menuIndex: menuIndex == freezed
          ? _value.menuIndex
          : menuIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $ProfileCopyWith<$Res> get myProfile {
    return $ProfileCopyWith<$Res>(_value.myProfile, (value) {
      return _then(_value.copyWith(myProfile: value));
    });
  }

  @override
  $ProfileCopyWith<$Res> get supervisorProfile {
    return $ProfileCopyWith<$Res>(_value.supervisorProfile, (value) {
      return _then(_value.copyWith(supervisorProfile: value));
    });
  }
}

/// @nodoc
abstract class _$$_AppStateCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory _$$_AppStateCopyWith(
          _$_AppState value, $Res Function(_$_AppState) then) =
      __$$_AppStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      Profile myProfile,
      Profile supervisorProfile,
      List<Profile> associatesProfiles,
      List<Profile> allProfiles,
      List<LeaveRequest>? leaveRequests,
      List<TimeRecord>? timeRecords,
      int menuIndex});

  @override
  $ProfileCopyWith<$Res> get myProfile;
  @override
  $ProfileCopyWith<$Res> get supervisorProfile;
}

/// @nodoc
class __$$_AppStateCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements _$$_AppStateCopyWith<$Res> {
  __$$_AppStateCopyWithImpl(
      _$_AppState _value, $Res Function(_$_AppState) _then)
      : super(_value, (v) => _then(v as _$_AppState));

  @override
  _$_AppState get _value => super._value as _$_AppState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? myProfile = freezed,
    Object? supervisorProfile = freezed,
    Object? associatesProfiles = freezed,
    Object? allProfiles = freezed,
    Object? leaveRequests = freezed,
    Object? timeRecords = freezed,
    Object? menuIndex = freezed,
  }) {
    return _then(_$_AppState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      myProfile: myProfile == freezed
          ? _value.myProfile
          : myProfile // ignore: cast_nullable_to_non_nullable
              as Profile,
      supervisorProfile: supervisorProfile == freezed
          ? _value.supervisorProfile
          : supervisorProfile // ignore: cast_nullable_to_non_nullable
              as Profile,
      associatesProfiles: associatesProfiles == freezed
          ? _value._associatesProfiles
          : associatesProfiles // ignore: cast_nullable_to_non_nullable
              as List<Profile>,
      allProfiles: allProfiles == freezed
          ? _value._allProfiles
          : allProfiles // ignore: cast_nullable_to_non_nullable
              as List<Profile>,
      leaveRequests: leaveRequests == freezed
          ? _value._leaveRequests
          : leaveRequests // ignore: cast_nullable_to_non_nullable
              as List<LeaveRequest>?,
      timeRecords: timeRecords == freezed
          ? _value._timeRecords
          : timeRecords // ignore: cast_nullable_to_non_nullable
              as List<TimeRecord>?,
      menuIndex: menuIndex == freezed
          ? _value.menuIndex
          : menuIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppState implements _AppState {
  _$_AppState(
      {this.isLoading = false,
      required this.myProfile,
      required this.supervisorProfile,
      required final List<Profile> associatesProfiles,
      required final List<Profile> allProfiles,
      final List<LeaveRequest>? leaveRequests,
      final List<TimeRecord>? timeRecords,
      this.menuIndex = 0})
      : _associatesProfiles = associatesProfiles,
        _allProfiles = allProfiles,
        _leaveRequests = leaveRequests,
        _timeRecords = timeRecords;

  factory _$_AppState.fromJson(Map<String, dynamic> json) =>
      _$$_AppStateFromJson(json);

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final Profile myProfile;
  @override
  final Profile supervisorProfile;
  final List<Profile> _associatesProfiles;
  @override
  List<Profile> get associatesProfiles {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_associatesProfiles);
  }

  final List<Profile> _allProfiles;
  @override
  List<Profile> get allProfiles {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allProfiles);
  }

  final List<LeaveRequest>? _leaveRequests;
  @override
  List<LeaveRequest>? get leaveRequests {
    final value = _leaveRequests;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<TimeRecord>? _timeRecords;
  @override
  List<TimeRecord>? get timeRecords {
    final value = _timeRecords;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final int menuIndex;

  @override
  String toString() {
    return 'AppState(isLoading: $isLoading, myProfile: $myProfile, supervisorProfile: $supervisorProfile, associatesProfiles: $associatesProfiles, allProfiles: $allProfiles, leaveRequests: $leaveRequests, timeRecords: $timeRecords, menuIndex: $menuIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.myProfile, myProfile) &&
            const DeepCollectionEquality()
                .equals(other.supervisorProfile, supervisorProfile) &&
            const DeepCollectionEquality()
                .equals(other._associatesProfiles, _associatesProfiles) &&
            const DeepCollectionEquality()
                .equals(other._allProfiles, _allProfiles) &&
            const DeepCollectionEquality()
                .equals(other._leaveRequests, _leaveRequests) &&
            const DeepCollectionEquality()
                .equals(other._timeRecords, _timeRecords) &&
            const DeepCollectionEquality().equals(other.menuIndex, menuIndex));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(myProfile),
      const DeepCollectionEquality().hash(supervisorProfile),
      const DeepCollectionEquality().hash(_associatesProfiles),
      const DeepCollectionEquality().hash(_allProfiles),
      const DeepCollectionEquality().hash(_leaveRequests),
      const DeepCollectionEquality().hash(_timeRecords),
      const DeepCollectionEquality().hash(menuIndex));

  @JsonKey(ignore: true)
  @override
  _$$_AppStateCopyWith<_$_AppState> get copyWith =>
      __$$_AppStateCopyWithImpl<_$_AppState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppStateToJson(this);
  }
}

abstract class _AppState implements AppState {
  factory _AppState(
      {final bool isLoading,
      required final Profile myProfile,
      required final Profile supervisorProfile,
      required final List<Profile> associatesProfiles,
      required final List<Profile> allProfiles,
      final List<LeaveRequest>? leaveRequests,
      final List<TimeRecord>? timeRecords,
      final int menuIndex}) = _$_AppState;

  factory _AppState.fromJson(Map<String, dynamic> json) = _$_AppState.fromJson;

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  Profile get myProfile => throw _privateConstructorUsedError;
  @override
  Profile get supervisorProfile => throw _privateConstructorUsedError;
  @override
  List<Profile> get associatesProfiles => throw _privateConstructorUsedError;
  @override
  List<Profile> get allProfiles => throw _privateConstructorUsedError;
  @override
  List<LeaveRequest>? get leaveRequests => throw _privateConstructorUsedError;
  @override
  List<TimeRecord>? get timeRecords => throw _privateConstructorUsedError;
  @override
  int get menuIndex => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AppStateCopyWith<_$_AppState> get copyWith =>
      throw _privateConstructorUsedError;
}
