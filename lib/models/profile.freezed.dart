// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Profile _$ProfileFromJson(Map<String, dynamic> json) {
  return _Profile.fromJson(json);
}

/// @nodoc
mixin _$Profile {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'position')
  String get position => throw _privateConstructorUsedError;
  @JsonKey(name: 'imageUrl')
  String get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'tele')
  String? get tele => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone')
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'mobile')
  String? get mobile => throw _privateConstructorUsedError;
  @JsonKey(name: 'address')
  String get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'leaves')
  Leaves? get leaves => throw _privateConstructorUsedError;
  @JsonKey(name: 'az_account')
  int get azAccount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileCopyWith<Profile> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileCopyWith<$Res> {
  factory $ProfileCopyWith(Profile value, $Res Function(Profile) then) =
      _$ProfileCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'position') String position,
      @JsonKey(name: 'imageUrl') String imageUrl,
      @JsonKey(name: 'tele') String? tele,
      @JsonKey(name: 'phone') String? phone,
      @JsonKey(name: 'mobile') String? mobile,
      @JsonKey(name: 'address') String address,
      @JsonKey(name: 'leaves') Leaves? leaves,
      @JsonKey(name: 'az_account') int azAccount});

  $LeavesCopyWith<$Res>? get leaves;
}

/// @nodoc
class _$ProfileCopyWithImpl<$Res> implements $ProfileCopyWith<$Res> {
  _$ProfileCopyWithImpl(this._value, this._then);

  final Profile _value;
  // ignore: unused_field
  final $Res Function(Profile) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? position = freezed,
    Object? imageUrl = freezed,
    Object? tele = freezed,
    Object? phone = freezed,
    Object? mobile = freezed,
    Object? address = freezed,
    Object? leaves = freezed,
    Object? azAccount = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      tele: tele == freezed
          ? _value.tele
          : tele // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile: mobile == freezed
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      leaves: leaves == freezed
          ? _value.leaves
          : leaves // ignore: cast_nullable_to_non_nullable
              as Leaves?,
      azAccount: azAccount == freezed
          ? _value.azAccount
          : azAccount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $LeavesCopyWith<$Res>? get leaves {
    if (_value.leaves == null) {
      return null;
    }

    return $LeavesCopyWith<$Res>(_value.leaves!, (value) {
      return _then(_value.copyWith(leaves: value));
    });
  }
}

/// @nodoc
abstract class _$$_ProfileCopyWith<$Res> implements $ProfileCopyWith<$Res> {
  factory _$$_ProfileCopyWith(
          _$_Profile value, $Res Function(_$_Profile) then) =
      __$$_ProfileCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'position') String position,
      @JsonKey(name: 'imageUrl') String imageUrl,
      @JsonKey(name: 'tele') String? tele,
      @JsonKey(name: 'phone') String? phone,
      @JsonKey(name: 'mobile') String? mobile,
      @JsonKey(name: 'address') String address,
      @JsonKey(name: 'leaves') Leaves? leaves,
      @JsonKey(name: 'az_account') int azAccount});

  @override
  $LeavesCopyWith<$Res>? get leaves;
}

/// @nodoc
class __$$_ProfileCopyWithImpl<$Res> extends _$ProfileCopyWithImpl<$Res>
    implements _$$_ProfileCopyWith<$Res> {
  __$$_ProfileCopyWithImpl(_$_Profile _value, $Res Function(_$_Profile) _then)
      : super(_value, (v) => _then(v as _$_Profile));

  @override
  _$_Profile get _value => super._value as _$_Profile;

  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? position = freezed,
    Object? imageUrl = freezed,
    Object? tele = freezed,
    Object? phone = freezed,
    Object? mobile = freezed,
    Object? address = freezed,
    Object? leaves = freezed,
    Object? azAccount = freezed,
  }) {
    return _then(_$_Profile(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      tele: tele == freezed
          ? _value.tele
          : tele // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile: mobile == freezed
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      leaves: leaves == freezed
          ? _value.leaves
          : leaves // ignore: cast_nullable_to_non_nullable
              as Leaves?,
      azAccount: azAccount == freezed
          ? _value.azAccount
          : azAccount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Profile implements _Profile {
  _$_Profile(
      {@JsonKey(name: 'name')
          this.name = 'No Name',
      @JsonKey(name: 'email')
          this.email = 'No Email',
      @JsonKey(name: 'position')
          this.position = 'No Position',
      @JsonKey(name: 'imageUrl')
          this.imageUrl = 'assets/profile_pics/empty.png',
      @JsonKey(name: 'tele')
          this.tele,
      @JsonKey(name: 'phone')
          this.phone,
      @JsonKey(name: 'mobile')
          this.mobile,
      @JsonKey(name: 'address')
          this.address = 'No Address',
      @JsonKey(name: 'leaves')
          this.leaves,
      @JsonKey(name: 'az_account')
          this.azAccount = 0});

  factory _$_Profile.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'email')
  final String email;
  @override
  @JsonKey(name: 'position')
  final String position;
  @override
  @JsonKey(name: 'imageUrl')
  final String imageUrl;
  @override
  @JsonKey(name: 'tele')
  final String? tele;
  @override
  @JsonKey(name: 'phone')
  final String? phone;
  @override
  @JsonKey(name: 'mobile')
  final String? mobile;
  @override
  @JsonKey(name: 'address')
  final String address;
  @override
  @JsonKey(name: 'leaves')
  final Leaves? leaves;
  @override
  @JsonKey(name: 'az_account')
  final int azAccount;

  @override
  String toString() {
    return 'Profile(name: $name, email: $email, position: $position, imageUrl: $imageUrl, tele: $tele, phone: $phone, mobile: $mobile, address: $address, leaves: $leaves, azAccount: $azAccount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Profile &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.position, position) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality().equals(other.tele, tele) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality().equals(other.mobile, mobile) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.leaves, leaves) &&
            const DeepCollectionEquality().equals(other.azAccount, azAccount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(position),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(tele),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(mobile),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(leaves),
      const DeepCollectionEquality().hash(azAccount));

  @JsonKey(ignore: true)
  @override
  _$$_ProfileCopyWith<_$_Profile> get copyWith =>
      __$$_ProfileCopyWithImpl<_$_Profile>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileToJson(this);
  }
}

abstract class _Profile implements Profile {
  factory _Profile(
      {@JsonKey(name: 'name') final String name,
      @JsonKey(name: 'email') final String email,
      @JsonKey(name: 'position') final String position,
      @JsonKey(name: 'imageUrl') final String imageUrl,
      @JsonKey(name: 'tele') final String? tele,
      @JsonKey(name: 'phone') final String? phone,
      @JsonKey(name: 'mobile') final String? mobile,
      @JsonKey(name: 'address') final String address,
      @JsonKey(name: 'leaves') final Leaves? leaves,
      @JsonKey(name: 'az_account') final int azAccount}) = _$_Profile;

  factory _Profile.fromJson(Map<String, dynamic> json) = _$_Profile.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'email')
  String get email => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'position')
  String get position => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'imageUrl')
  String get imageUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'tele')
  String? get tele => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'phone')
  String? get phone => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'mobile')
  String? get mobile => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'address')
  String get address => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'leaves')
  Leaves? get leaves => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'az_account')
  int get azAccount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileCopyWith<_$_Profile> get copyWith =>
      throw _privateConstructorUsedError;
}
