import 'package:final_capstone/feature/business_card_screen/business_card_screen.dart';
import 'package:final_capstone/feature/business_card_screen/widgets/business_card_category.dart';
import 'package:final_capstone/feature/home_screen/widgets/profile_summary.dart';
import 'package:final_capstone/utilities/global_constants.dart';
import 'package:final_capstone/utilities/svg_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:final_capstone/models/profile.dart';
import 'package:final_capstone/utilities/fonts.dart';

class BusinessCard extends StatelessWidget {
  final Profile profile;
  final Tabs selectedTab;

  const BusinessCard({
    Key? key,
    required this.profile,
    required this.selectedTab,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> contact = [
      'T: ${profile.tele}',
      'F: ${profile.phone}',
      'M: ${profile.mobile}',
      'E: ${profile.email}',
      'www.flutter-bootcamp.com',
    ];
    return SingleChildScrollView(
      child: Container(
        margin: globalMargin,
        padding: upperContainerPadding,
        color: CupertinoColors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProfileSummary(
              profile: profile,
              header: (selectedTab.index == 0) ? 'Visitenkarte' : 'Vorgesetze',
            ),
            const SizedBox(height: 50),
            Center(child: Image.asset('assets/qr.png')),
            const SizedBox(height: 50),
            BusinessCardCategory(
              header: 'Adrese',
              icon: locationIcon,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RobotoFont(
                    text: profile.addressLines[0],
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                  RobotoFont(
                    text: profile.addressLines[1],
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    fontColor: CupertinoColors.systemGrey,
                  ),
                  RobotoFont(
                    text: profile.addressLines[2],
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    fontColor: CupertinoColors.systemGrey,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50),
            BusinessCardCategory(
              header: 'Kontakt',
              icon: selectedHomeScreenIcon,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                  contact.length,
                  (index) {
                    if (index < 4) {
                      return RobotoFont(
                        text: contact[index],
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      );
                    } else {
                      return CupertinoButton(
                        padding: EdgeInsets.zero,
                        child: RobotoFont(
                          text: contact[index],
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                        onPressed: () {},
                      );
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
