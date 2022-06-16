// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'leaves.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Leaves _$LeavesFromJson(Map<String, dynamic> json) {
  return _Leaves.fromJson(json);
}

/// @nodoc
mixin _$Leaves {
  @JsonKey(name: 'annual_leave')
  int get annualLeave => throw _privateConstructorUsedError;
  @JsonKey(name: 'remaining_vacation')
  int get remainingVacation => throw _privateConstructorUsedError;
  @JsonKey(name: 'requested_leave')
  int get requestedLeave => throw _privateConstructorUsedError;
  @JsonKey(name: 'carry_over')
  int get carryOver => throw _privateConstructorUsedError;
  @JsonKey(name: 'sick_days')
  int get sickDays => throw _privateConstructorUsedError;
  @JsonKey(name: 'leave_requests')
  dynamic get leaveRequests => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LeavesCopyWith<Leaves> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeavesCopyWith<$Res> {
  factory $LeavesCopyWith(Leaves value, $Res Function(Leaves) then) =
      _$LeavesCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'annual_leave') int annualLeave,
      @JsonKey(name: 'remaining_vacation') int remainingVacation,
      @JsonKey(name: 'requested_leave') int requestedLeave,
      @JsonKey(name: 'carry_over') int carryOver,
      @JsonKey(name: 'sick_days') int sickDays,
      @JsonKey(name: 'leave_requests') dynamic leaveRequests});
}

/// @nodoc
class _$LeavesCopyWithImpl<$Res> implements $LeavesCopyWith<$Res> {
  _$LeavesCopyWithImpl(this._value, this._then);

  final Leaves _value;
  // ignore: unused_field
  final $Res Function(Leaves) _then;

  @override
  $Res call({
    Object? annualLeave = freezed,
    Object? remainingVacation = freezed,
    Object? requestedLeave = freezed,
    Object? carryOver = freezed,
    Object? sickDays = freezed,
    Object? leaveRequests = freezed,
  }) {
    return _then(_value.copyWith(
      annualLeave: annualLeave == freezed
          ? _value.annualLeave
          : annualLeave // ignore: cast_nullable_to_non_nullable
              as int,
      remainingVacation: remainingVacation == freezed
          ? _value.remainingVacation
          : remainingVacation // ignore: cast_nullable_to_non_nullable
              as int,
      requestedLeave: requestedLeave == freezed
          ? _value.requestedLeave
          : requestedLeave // ignore: cast_nullable_to_non_nullable
              as int,
      carryOver: carryOver == freezed
          ? _value.carryOver
          : carryOver // ignore: cast_nullable_to_non_nullable
              as int,
      sickDays: sickDays == freezed
          ? _value.sickDays
          : sickDays // ignore: cast_nullable_to_non_nullable
              as int,
      leaveRequests: leaveRequests == freezed
          ? _value.leaveRequests
          : leaveRequests // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$$_LeavesCopyWith<$Res> implements $LeavesCopyWith<$Res> {
  factory _$$_LeavesCopyWith(_$_Leaves value, $Res Function(_$_Leaves) then) =
      __$$_LeavesCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'annual_leave') int annualLeave,
      @JsonKey(name: 'remaining_vacation') int remainingVacation,
      @JsonKey(name: 'requested_leave') int requestedLeave,
      @JsonKey(name: 'carry_over') int carryOver,
      @JsonKey(name: 'sick_days') int sickDays,
      @JsonKey(name: 'leave_requests') dynamic leaveRequests});
}

/// @nodoc
class __$$_LeavesCopyWithImpl<$Res> extends _$LeavesCopyWithImpl<$Res>
    implements _$$_LeavesCopyWith<$Res> {
  __$$_LeavesCopyWithImpl(_$_Leaves _value, $Res Function(_$_Leaves) _then)
      : super(_value, (v) => _then(v as _$_Leaves));

  @override
  _$_Leaves get _value => super._value as _$_Leaves;

  @override
  $Res call({
    Object? annualLeave = freezed,
    Object? remainingVacation = freezed,
    Object? requestedLeave = freezed,
    Object? carryOver = freezed,
    Object? sickDays = freezed,
    Object? leaveRequests = freezed,
  }) {
    return _then(_$_Leaves(
      annualLeave: annualLeave == freezed
          ? _value.annualLeave
          : annualLeave // ignore: cast_nullable_to_non_nullable
              as int,
      remainingVacation: remainingVacation == freezed
          ? _value.remainingVacation
          : remainingVacation // ignore: cast_nullable_to_non_nullable
              as int,
      requestedLeave: requestedLeave == freezed
          ? _value.requestedLeave
          : requestedLeave // ignore: cast_nullable_to_non_nullable
              as int,
      carryOver: carryOver == freezed
          ? _value.carryOver
          : carryOver // ignore: cast_nullable_to_non_nullable
              as int,
      sickDays: sickDays == freezed
          ? _value.sickDays
          : sickDays // ignore: cast_nullable_to_non_nullable
              as int,
      leaveRequests: leaveRequests == freezed
          ? _value.leaveRequests
          : leaveRequests // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Leaves implements _Leaves {
  _$_Leaves(
      {@JsonKey(name: 'annual_leave') this.annualLeave = 0,
      @JsonKey(name: 'remaining_vacation') this.remainingVacation = 0,
      @JsonKey(name: 'requested_leave') this.requestedLeave = 0,
      @JsonKey(name: 'carry_over') this.carryOver = 0,
      @JsonKey(name: 'sick_days') this.sickDays = 0,
      @JsonKey(name: 'leave_requests') this.leaveRequests});

  factory _$_Leaves.fromJson(Map<String, dynamic> json) =>
      _$$_LeavesFromJson(json);

  @override
  @JsonKey(name: 'annual_leave')
  final int annualLeave;
  @override
  @JsonKey(name: 'remaining_vacation')
  final int remainingVacation;
  @override
  @JsonKey(name: 'requested_leave')
  final int requestedLeave;
  @override
  @JsonKey(name: 'carry_over')
  final int carryOver;
  @override
  @JsonKey(name: 'sick_days')
  final int sickDays;
  @override
  @JsonKey(name: 'leave_requests')
  final dynamic leaveRequests;

  @override
  String toString() {
    return 'Leaves(annualLeave: $annualLeave, remainingVacation: $remainingVacation, requestedLeave: $requestedLeave, carryOver: $carryOver, sickDays: $sickDays, leaveRequests: $leaveRequests)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Leaves &&
            const DeepCollectionEquality()
                .equals(other.annualLeave, annualLeave) &&
            const DeepCollectionEquality()
                .equals(other.remainingVacation, remainingVacation) &&
            const DeepCollectionEquality()
                .equals(other.requestedLeave, requestedLeave) &&
            const DeepCollectionEquality().equals(other.carryOver, carryOver) &&
            const DeepCollectionEquality().equals(other.sickDays, sickDays) &&
            const DeepCollectionEquality()
                .equals(other.leaveRequests, leaveRequests));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(annualLeave),
      const DeepCollectionEquality().hash(remainingVacation),
      const DeepCollectionEquality().hash(requestedLeave),
      const DeepCollectionEquality().hash(carryOver),
      const DeepCollectionEquality().hash(sickDays),
      const DeepCollectionEquality().hash(leaveRequests));

  @JsonKey(ignore: true)
  @override
  _$$_LeavesCopyWith<_$_Leaves> get copyWith =>
      __$$_LeavesCopyWithImpl<_$_Leaves>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LeavesToJson(this);
  }
}

abstract class _Leaves implements Leaves {
  factory _Leaves(
          {@JsonKey(name: 'annual_leave') final int annualLeave,
          @JsonKey(name: 'remaining_vacation') final int remainingVacation,
          @JsonKey(name: 'requested_leave') final int requestedLeave,
          @JsonKey(name: 'carry_over') final int carryOver,
          @JsonKey(name: 'sick_days') final int sickDays,
          @JsonKey(name: 'leave_requests') final dynamic leaveRequests}) =
      _$_Leaves;

  factory _Leaves.fromJson(Map<String, dynamic> json) = _$_Leaves.fromJson;

  @override
  @JsonKey(name: 'annual_leave')
  int get annualLeave => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'remaining_vacation')
  int get remainingVacation => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'requested_leave')
  int get requestedLeave => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'carry_over')
  int get carryOver => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'sick_days')
  int get sickDays => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'leave_requests')
  dynamic get leaveRequests => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_LeavesCopyWith<_$_Leaves> get copyWith =>
      throw _privateConstructorUsedError;
}
