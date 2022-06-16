// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'leave_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LeaveRequest _$LeaveRequestFromJson(Map<String, dynamic> json) {
  return _LeaveRequest.fromJson(json);
}

/// @nodoc
mixin _$LeaveRequest {
  @JsonKey(name: 'notes')
  String? get notes => throw _privateConstructorUsedError;
  @JsonKey(name: 'type_of_leave')
  String get typeOfLeave => throw _privateConstructorUsedError;
  @JsonKey(name: 'type_of_day')
  String get typeOfDay => throw _privateConstructorUsedError;
  @JsonKey(name: 'substitute')
  Profile get chosenSubstitute => throw _privateConstructorUsedError;
  @JsonKey(name: 'days')
  List<DateTime> get days => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LeaveRequestCopyWith<LeaveRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaveRequestCopyWith<$Res> {
  factory $LeaveRequestCopyWith(
          LeaveRequest value, $Res Function(LeaveRequest) then) =
      _$LeaveRequestCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'notes') String? notes,
      @JsonKey(name: 'type_of_leave') String typeOfLeave,
      @JsonKey(name: 'type_of_day') String typeOfDay,
      @JsonKey(name: 'substitute') Profile chosenSubstitute,
      @JsonKey(name: 'days') List<DateTime> days});

  $ProfileCopyWith<$Res> get chosenSubstitute;
}

/// @nodoc
class _$LeaveRequestCopyWithImpl<$Res> implements $LeaveRequestCopyWith<$Res> {
  _$LeaveRequestCopyWithImpl(this._value, this._then);

  final LeaveRequest _value;
  // ignore: unused_field
  final $Res Function(LeaveRequest) _then;

  @override
  $Res call({
    Object? notes = freezed,
    Object? typeOfLeave = freezed,
    Object? typeOfDay = freezed,
    Object? chosenSubstitute = freezed,
    Object? days = freezed,
  }) {
    return _then(_value.copyWith(
      notes: notes == freezed
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      typeOfLeave: typeOfLeave == freezed
          ? _value.typeOfLeave
          : typeOfLeave // ignore: cast_nullable_to_non_nullable
              as String,
      typeOfDay: typeOfDay == freezed
          ? _value.typeOfDay
          : typeOfDay // ignore: cast_nullable_to_non_nullable
              as String,
      chosenSubstitute: chosenSubstitute == freezed
          ? _value.chosenSubstitute
          : chosenSubstitute // ignore: cast_nullable_to_non_nullable
              as Profile,
      days: days == freezed
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
    ));
  }

  @override
  $ProfileCopyWith<$Res> get chosenSubstitute {
    return $ProfileCopyWith<$Res>(_value.chosenSubstitute, (value) {
      return _then(_value.copyWith(chosenSubstitute: value));
    });
  }
}

/// @nodoc
abstract class _$$_LeaveRequestCopyWith<$Res>
    implements $LeaveRequestCopyWith<$Res> {
  factory _$$_LeaveRequestCopyWith(
          _$_LeaveRequest value, $Res Function(_$_LeaveRequest) then) =
      __$$_LeaveRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'notes') String? notes,
      @JsonKey(name: 'type_of_leave') String typeOfLeave,
      @JsonKey(name: 'type_of_day') String typeOfDay,
      @JsonKey(name: 'substitute') Profile chosenSubstitute,
      @JsonKey(name: 'days') List<DateTime> days});

  @override
  $ProfileCopyWith<$Res> get chosenSubstitute;
}

/// @nodoc
class __$$_LeaveRequestCopyWithImpl<$Res>
    extends _$LeaveRequestCopyWithImpl<$Res>
    implements _$$_LeaveRequestCopyWith<$Res> {
  __$$_LeaveRequestCopyWithImpl(
      _$_LeaveRequest _value, $Res Function(_$_LeaveRequest) _then)
      : super(_value, (v) => _then(v as _$_LeaveRequest));

  @override
  _$_LeaveRequest get _value => super._value as _$_LeaveRequest;

  @override
  $Res call({
    Object? notes = freezed,
    Object? typeOfLeave = freezed,
    Object? typeOfDay = freezed,
    Object? chosenSubstitute = freezed,
    Object? days = freezed,
  }) {
    return _then(_$_LeaveRequest(
      notes: notes == freezed
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      typeOfLeave: typeOfLeave == freezed
          ? _value.typeOfLeave
          : typeOfLeave // ignore: cast_nullable_to_non_nullable
              as String,
      typeOfDay: typeOfDay == freezed
          ? _value.typeOfDay
          : typeOfDay // ignore: cast_nullable_to_non_nullable
              as String,
      chosenSubstitute: chosenSubstitute == freezed
          ? _value.chosenSubstitute
          : chosenSubstitute // ignore: cast_nullable_to_non_nullable
              as Profile,
      days: days == freezed
          ? _value._days
          : days // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LeaveRequest implements _LeaveRequest {
  _$_LeaveRequest(
      {@JsonKey(name: 'notes') this.notes,
      @JsonKey(name: 'type_of_leave') required this.typeOfLeave,
      @JsonKey(name: 'type_of_day') required this.typeOfDay,
      @JsonKey(name: 'substitute') required this.chosenSubstitute,
      @JsonKey(name: 'days') required final List<DateTime> days})
      : _days = days;

  factory _$_LeaveRequest.fromJson(Map<String, dynamic> json) =>
      _$$_LeaveRequestFromJson(json);

  @override
  @JsonKey(name: 'notes')
  final String? notes;
  @override
  @JsonKey(name: 'type_of_leave')
  final String typeOfLeave;
  @override
  @JsonKey(name: 'type_of_day')
  final String typeOfDay;
  @override
  @JsonKey(name: 'substitute')
  final Profile chosenSubstitute;
  final List<DateTime> _days;
  @override
  @JsonKey(name: 'days')
  List<DateTime> get days {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_days);
  }

  @override
  String toString() {
    return 'LeaveRequest(notes: $notes, typeOfLeave: $typeOfLeave, typeOfDay: $typeOfDay, chosenSubstitute: $chosenSubstitute, days: $days)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LeaveRequest &&
            const DeepCollectionEquality().equals(other.notes, notes) &&
            const DeepCollectionEquality()
                .equals(other.typeOfLeave, typeOfLeave) &&
            const DeepCollectionEquality().equals(other.typeOfDay, typeOfDay) &&
            const DeepCollectionEquality()
                .equals(other.chosenSubstitute, chosenSubstitute) &&
            const DeepCollectionEquality().equals(other._days, _days));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(notes),
      const DeepCollectionEquality().hash(typeOfLeave),
      const DeepCollectionEquality().hash(typeOfDay),
      const DeepCollectionEquality().hash(chosenSubstitute),
      const DeepCollectionEquality().hash(_days));

  @JsonKey(ignore: true)
  @override
  _$$_LeaveRequestCopyWith<_$_LeaveRequest> get copyWith =>
      __$$_LeaveRequestCopyWithImpl<_$_LeaveRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LeaveRequestToJson(this);
  }
}

abstract class _LeaveRequest implements LeaveRequest {
  factory _LeaveRequest(
          {@JsonKey(name: 'notes') final String? notes,
          @JsonKey(name: 'type_of_leave') required final String typeOfLeave,
          @JsonKey(name: 'type_of_day') required final String typeOfDay,
          @JsonKey(name: 'substitute') required final Profile chosenSubstitute,
          @JsonKey(name: 'days') required final List<DateTime> days}) =
      _$_LeaveRequest;

  factory _LeaveRequest.fromJson(Map<String, dynamic> json) =
      _$_LeaveRequest.fromJson;

  @override
  @JsonKey(name: 'notes')
  String? get notes => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'type_of_leave')
  String get typeOfLeave => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'type_of_day')
  String get typeOfDay => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'substitute')
  Profile get chosenSubstitute => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'days')
  List<DateTime> get days => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_LeaveRequestCopyWith<_$_LeaveRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
