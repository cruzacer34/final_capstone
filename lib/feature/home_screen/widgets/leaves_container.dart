import 'package:final_capstone/models/profile.dart';
import 'package:final_capstone/models/leaves.dart';
import 'package:final_capstone/utilities/global_constants.dart';
import 'package:final_capstone/widgets/custom_cupertino_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:final_capstone/utilities/fonts.dart';
import 'package:final_capstone/utilities/svg_icons.dart';
import 'package:intl/intl.dart';

class LeavesContainer extends StatelessWidget {
  final Profile myProfile;

  const LeavesContainer({
    Key? key,
    required this.myProfile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final expiryDate = DateFormat('dd.MM.yyyy')
        .format(DateFormat('MMMM dd yyyy').parse('December 31 2022'))
        .toString();
    Map<String, String> overview = {
      'Jahresurlaub': '${myProfile.leaves?.annualLeaveExt}',
      'Resturlaub EPOS': '${myProfile.leaves?.remainingVacationExt}',
      'Beantragt': '${myProfile.leaves?.totalRequestedLeaves}',
      'Ubertrag Vorjahr': '${myProfile.leaves?.carryOverExt}',
    };
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
                  RobotoFont(
                    text:
                        'Ubersicht ${DateFormat('yyyy').format(DateTime.now())}',
                    fontWeight: FontWeight.w500,
                    fontSize: 22,
                  ),
                  treeIcon,
                ],
              ),
              const SizedBox(height: 20),
              Padding(
                padding: rightValuesPadding,
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RobotoFont(
                            text: overview.keys.toList()[index],
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                          if (index == 3)
                            RobotoFont(
                              text: '(gultig bis $expiryDate)',
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              fontColor: CupertinoColors.systemGrey,
                            ),
                        ],
                      ),
                      RobotoFont(
                        text: overview.values.toList()[index],
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ],
                  ),
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 10),
                  itemCount: overview.length,
                ),
              ),
              const SizedBox(height: 20),
              CustomCupertinoButton(
                text: 'Urlaub beantragen',
                icon: addWhiteIcon,
                onPressed: () =>
                    Navigator.of(context).pushNamed('/apply-leave-screen'),
              ),
            ],
          ),
        ),
        Container(
          padding: upperContainerPadding,
          color: CupertinoColors.systemGrey5,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const RobotoFont(
                text: 'Aktuelles Budget',
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
              CircleAvatar(
                backgroundColor: CupertinoColors.systemOrange,
                child: RobotoFont(
                  text: '${myProfile.leaves?.currentBudget}',
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  fontColor: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
