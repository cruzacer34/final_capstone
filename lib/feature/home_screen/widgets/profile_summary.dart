import 'package:final_capstone/models/profile.dart';
import 'package:final_capstone/widgets/profile_pic.dart';
import 'package:final_capstone/widgets/custom_tag.dart';
import 'package:flutter/cupertino.dart';
import 'package:final_capstone/utilities/fonts.dart';

class ProfileSummary extends StatelessWidget {
  final Profile profile;
  final String header;

  const ProfileSummary({
    Key? key,
    required this.profile,
    required this.header,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RobotoFont(
          text: header,
          fontWeight: FontWeight.w500,
          fontSize: 22,
        ),
        const SizedBox(height: 10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ProfilePic(
              profile: profile,
              size: 80,
            ),
            const SizedBox(width: 25),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RobotoFont(
                  text: profile.name,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
                RobotoFont(
                  text: profile.email,
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  fontColor: CupertinoColors.systemGrey,
                ),
                const SizedBox(height: 10),
                if (header == 'Vorgesetzte(r)')
                  const CustomTag(text: '0160 - 123456789')
                else
                  RobotoFont(
                    text: profile.position,
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    fontColor: CupertinoColors.systemGrey,
                  ),
              ],
            )
          ],
        )
      ],
    );
  }
}
