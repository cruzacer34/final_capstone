import 'package:final_capstone/models/leaves.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile.freezed.dart';

part 'profile.g.dart';

@freezed
abstract class Profile with _$Profile {
  factory Profile({
    @Default('No Name') @JsonKey(name: 'name') String name,
    @Default('No Email') @JsonKey(name: 'email') String email,
    @Default('No Position') @JsonKey(name: 'position') String position,
    @Default('assets/profile_pics/empty.png') @JsonKey(name: 'imageUrl') String imageUrl,
    @JsonKey(name: 'tele') String? tele,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'mobile') String? mobile,
    @Default('No Address')  @JsonKey(name: 'address') String address,
    @JsonKey(name: 'leaves') Leaves? leaves,
    @Default(0) @JsonKey(name: 'az_account') int azAccount,
  }) = _Profile;

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);
}

extension ProfileExt on Profile {
  List<String> get addressLines => address.split(', ');

}