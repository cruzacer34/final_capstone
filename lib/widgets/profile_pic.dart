import 'package:final_capstone/models/profile.dart';
import 'package:flutter/material.dart';

class ProfilePic extends StatelessWidget {
  final Profile profile;
  final double? size;

  const ProfilePic({
    Key? key,
    required this.profile,
    this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.asset(
        fit: BoxFit.fill,
        profile.imageUrl,
        height: size,
        width: size,
      ),
    );
  }
}
