// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Profile _$$_ProfileFromJson(Map<String, dynamic> json) => _$_Profile(
      name: json['name'] as String? ?? 'No Name',
      email: json['email'] as String? ?? 'No Email',
      position: json['position'] as String? ?? 'No Position',
      imageUrl: json['imageUrl'] as String? ?? 'assets/profile_pics/empty.png',
      tele: json['tele'] as String?,
      phone: json['phone'] as String?,
      mobile: json['mobile'] as String?,
      address: json['address'] as String? ?? 'No Address',
      leaves: json['leaves'] == null
          ? null
          : Leaves.fromJson(json['leaves'] as Map<String, dynamic>),
      azAccount: json['az_account'] as int? ?? 0,
    );

Map<String, dynamic> _$$_ProfileToJson(_$_Profile instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'position': instance.position,
      'imageUrl': instance.imageUrl,
      'tele': instance.tele,
      'phone': instance.phone,
      'mobile': instance.mobile,
      'address': instance.address,
      'leaves': instance.leaves,
      'az_account': instance.azAccount,
    };
