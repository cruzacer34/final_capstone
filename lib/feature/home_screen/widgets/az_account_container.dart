import 'package:final_capstone/models/profile.dart';
import 'package:final_capstone/utilities/global_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:final_capstone/utilities/fonts.dart';

class AzAccountContainer extends StatelessWidget {
  final Profile myProfile;

  const AzAccountContainer({
    Key? key,
    required this.myProfile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: lowerContainerPadding,
          color: CupertinoColors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const RobotoFont(
                text: 'AZ Konto',
                fontWeight: FontWeight.w500,
                fontSize: 22,
              ),
              const SizedBox(height: 20),
              Padding(
                padding: rightValuesPadding,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const RobotoFont(
                      text: 'Stunden',
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                    RobotoFont(
                      text: '${myProfile.azAccount} / 250',
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
