// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'time_record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TimeRecord _$TimeRecordFromJson(Map<String, dynamic> json) {
  return _TimeRecord.fromJson(json);
}

/// @nodoc
mixin _$TimeRecord {
  @JsonKey(name: 'type')
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'category')
  String get category => throw _privateConstructorUsedError;
  @JsonKey(name: 'project_number')
  int get projectNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'included_associates')
  List<Profile>? get includedAssociates => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_time')
  DateTime get startTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_time')
  DateTime get endTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'notes')
  String? get notes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimeRecordCopyWith<TimeRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeRecordCopyWith<$Res> {
  factory $TimeRecordCopyWith(
          TimeRecord value, $Res Function(TimeRecord) then) =
      _$TimeRecordCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'type') String type,
      @JsonKey(name: 'category') String category,
      @JsonKey(name: 'project_number') int projectNumber,
      @JsonKey(name: 'included_associates') List<Profile>? includedAssociates,
      @JsonKey(name: 'start_time') DateTime startTime,
      @JsonKey(name: 'end_time') DateTime endTime,
      @JsonKey(name: 'notes') String? notes});
}

/// @nodoc
class _$TimeRecordCopyWithImpl<$Res> implements $TimeRecordCopyWith<$Res> {
  _$TimeRecordCopyWithImpl(this._value, this._then);

  final TimeRecord _value;
  // ignore: unused_field
  final $Res Function(TimeRecord) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? category = freezed,
    Object? projectNumber = freezed,
    Object? includedAssociates = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? notes = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      projectNumber: projectNumber == freezed
          ? _value.projectNumber
          : projectNumber // ignore: cast_nullable_to_non_nullable
              as int,
      includedAssociates: includedAssociates == freezed
          ? _value.includedAssociates
          : includedAssociates // ignore: cast_nullable_to_non_nullable
              as List<Profile>?,
      startTime: startTime == freezed
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: endTime == freezed
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      notes: notes == freezed
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_TimeRecordCopyWith<$Res>
    implements $TimeRecordCopyWith<$Res> {
  factory _$$_TimeRecordCopyWith(
          _$_TimeRecord value, $Res Function(_$_TimeRecord) then) =
      __$$_TimeRecordCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'type') String type,
      @JsonKey(name: 'category') String category,
      @JsonKey(name: 'project_number') int projectNumber,
      @JsonKey(name: 'included_associates') List<Profile>? includedAssociates,
      @JsonKey(name: 'start_time') DateTime startTime,
      @JsonKey(name: 'end_time') DateTime endTime,
      @JsonKey(name: 'notes') String? notes});
}

/// @nodoc
class __$$_TimeRecordCopyWithImpl<$Res> extends _$TimeRecordCopyWithImpl<$Res>
    implements _$$_TimeRecordCopyWith<$Res> {
  __$$_TimeRecordCopyWithImpl(
      _$_TimeRecord _value, $Res Function(_$_TimeRecord) _then)
      : super(_value, (v) => _then(v as _$_TimeRecord));

  @override
  _$_TimeRecord get _value => super._value as _$_TimeRecord;

  @override
  $Res call({
    Object? type = freezed,
    Object? category = freezed,
    Object? projectNumber = freezed,
    Object? includedAssociates = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? notes = freezed,
  }) {
    return _then(_$_TimeRecord(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      projectNumber: projectNumber == freezed
          ? _value.projectNumber
          : projectNumber // ignore: cast_nullable_to_non_nullable
              as int,
      includedAssociates: includedAssociates == freezed
          ? _value._includedAssociates
          : includedAssociates // ignore: cast_nullable_to_non_nullable
              as List<Profile>?,
      startTime: startTime == freezed
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: endTime == freezed
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      notes: notes == freezed
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TimeRecord implements _TimeRecord {
  _$_TimeRecord(
      {@JsonKey(name: 'type')
          this.type = 'Arbeitszeit',
      @JsonKey(name: 'category')
          required this.category,
      @JsonKey(name: 'project_number')
          required this.projectNumber,
      @JsonKey(name: 'included_associates')
          final List<Profile>? includedAssociates,
      @JsonKey(name: 'start_time')
          required this.startTime,
      @JsonKey(name: 'end_time')
          required this.endTime,
      @JsonKey(name: 'notes')
          this.notes})
      : _includedAssociates = includedAssociates;

  factory _$_TimeRecord.fromJson(Map<String, dynamic> json) =>
      _$$_TimeRecordFromJson(json);

  @override
  @JsonKey(name: 'type')
  final String type;
  @override
  @JsonKey(name: 'category')
  final String category;
  @override
  @JsonKey(name: 'project_number')
  final int projectNumber;
  final List<Profile>? _includedAssociates;
  @override
  @JsonKey(name: 'included_associates')
  List<Profile>? get includedAssociates {
    final value = _includedAssociates;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'start_time')
  final DateTime startTime;
  @override
  @JsonKey(name: 'end_time')
  final DateTime endTime;
  @override
  @JsonKey(name: 'notes')
  final String? notes;

  @override
  String toString() {
    return 'TimeRecord(type: $type, category: $category, projectNumber: $projectNumber, includedAssociates: $includedAssociates, startTime: $startTime, endTime: $endTime, notes: $notes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TimeRecord &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality()
                .equals(other.projectNumber, projectNumber) &&
            const DeepCollectionEquality()
                .equals(other._includedAssociates, _includedAssociates) &&
            const DeepCollectionEquality().equals(other.startTime, startTime) &&
            const DeepCollectionEquality().equals(other.endTime, endTime) &&
            const DeepCollectionEquality().equals(other.notes, notes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(projectNumber),
      const DeepCollectionEquality().hash(_includedAssociates),
      const DeepCollectionEquality().hash(startTime),
      const DeepCollectionEquality().hash(endTime),
      const DeepCollectionEquality().hash(notes));

  @JsonKey(ignore: true)
  @override
  _$$_TimeRecordCopyWith<_$_TimeRecord> get copyWith =>
      __$$_TimeRecordCopyWithImpl<_$_TimeRecord>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TimeRecordToJson(this);
  }
}

abstract class _TimeRecord implements TimeRecord {
  factory _TimeRecord(
      {@JsonKey(name: 'type')
          final String type,
      @JsonKey(name: 'category')
          required final String category,
      @JsonKey(name: 'project_number')
          required final int projectNumber,
      @JsonKey(name: 'included_associates')
          final List<Profile>? includedAssociates,
      @JsonKey(name: 'start_time')
          required final DateTime startTime,
      @JsonKey(name: 'end_time')
          required final DateTime endTime,
      @JsonKey(name: 'notes')
          final String? notes}) = _$_TimeRecord;

  factory _TimeRecord.fromJson(Map<String, dynamic> json) =
      _$_TimeRecord.fromJson;

  @override
  @JsonKey(name: 'type')
  String get type => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'category')
  String get category => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'project_number')
  int get projectNumber => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'included_associates')
  List<Profile>? get includedAssociates => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'start_time')
  DateTime get startTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'end_time')
  DateTime get endTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'notes')
  String? get notes => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TimeRecordCopyWith<_$_TimeRecord> get copyWith =>
      throw _privateConstructorUsedError;
}
