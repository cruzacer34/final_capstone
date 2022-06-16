import 'package:final_capstone/models/profile.dart';
import 'package:final_capstone/utilities/global_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:final_capstone/utilities/fonts.dart';
import 'package:final_capstone/utilities/svg_icons.dart';
import 'package:final_capstone/widgets/custom_cupertino_button.dart';
import 'package:final_capstone/models/leaves.dart';

class SickDaysContainer extends StatelessWidget {
  final Profile myProfile;

  const SickDaysContainer({
    Key? key,
    required this.myProfile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: middleContainerPadding,
          color: CupertinoColors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const RobotoFont(
                    text: 'Krankheitstage',
                    fontWeight: FontWeight.w500,
                    fontSize: 22,
                  ),
                  medkitIcon,
                ],
              ),
              const SizedBox(height: 20),
              Padding(
                padding: rightValuesPadding,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const RobotoFont(
                      text: 'Insgesamt',
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                    RobotoFont(
                      text: '${myProfile.leaves?.sickDaysExt}',
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              CustomCupertinoButton(
                text: 'Krankheit einreichen',
                icon: addWhiteIcon,
                onPressed: () =>
                    Navigator.of(context).pushNamed('/apply-leave-screen'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
