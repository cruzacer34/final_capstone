import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:final_capstone/feature/business_card_screen/widgets/business_card.dart';
import 'package:final_capstone/models/profile.dart';
import 'package:final_capstone/utilities/fonts.dart';
import 'package:final_capstone/utilities/global_constants.dart';
import 'package:final_capstone/widgets/custom_cupertino_nav_bar.dart';
import 'package:final_capstone/widgets/custom_icon_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:final_capstone/utilities/svg_icons.dart';

enum Tabs {
  myCard,
  supervisorCard,
}

class BusinessCardScreen extends StatefulWidget {
  final Profile myProfile;
  final Profile supervisorProfile;
  final bool isLoggingIn;

  const BusinessCardScreen({
    Key? key,
    required this.myProfile,
    required this.supervisorProfile,
    required this.isLoggingIn,
  }) : super(key: key);

  @override
  State<BusinessCardScreen> createState() => _BusinessCardScreenState();
}

class _BusinessCardScreenState extends State<BusinessCardScreen> {
  Tabs _selectedSegment = Tabs.myCard;

  @override
  Widget build(BuildContext context) {
    Map<Tabs, dynamic> card = {
      Tabs.myCard: BusinessCard(
        profile: widget.myProfile,
        selectedTab: _selectedSegment,
      ),
      Tabs.supervisorCard: BusinessCard(
        profile: widget.supervisorProfile,
        selectedTab: _selectedSegment,
      ),
    };
    return CupertinoPageScaffold(
      navigationBar: CustomCupertinoNavBar(
        leading: CustomIconButton(
          icon: menuIcon,
          onPressed: () => Navigator.of(context).pushNamed('/drawer-screen'),
        ),
      ),
      child: SafeArea(
        child: Container(
          margin: globalMargin,
          child: Column(
            children: [
              SizedBox(
                height: 60,
                child: Material(
                  child: CustomSlidingSegmentedControl<Tabs>(
                    isStretch: true,
                    children: <Tabs, Widget>{
                      Tabs.myCard: AllertaFont(
                        text: 'Meine Visitenkarte',
                        fontSize: 17,
                        fontColor: (_selectedSegment.index == 0)
                            ? Colors.black
                            : Colors.grey,
                      ),
                      Tabs.supervisorCard: AllertaFont(
                        text: 'Vorgesetzte',
                        fontSize: 17,
                        fontColor: (_selectedSegment.index == 1)
                            ? Colors.black
                            : Colors.grey,
                      ),
                    },
                    onValueChanged: (Tabs? value) {
                      if (value != null) {
                        setState(() {
                          _selectedSegment = value;
                        });
                      }
                    },
                    height: 100,
                    decoration: BoxDecoration(
                      color: CupertinoTheme.of(context).scaffoldBackgroundColor,
                    ),
                    thumbDecoration: const BoxDecoration(
                      image: tabBackgroundImage,
                      border: selectedTabUnderline,
                    ),
                  ),
                ),
              ),
              widget.isLoggingIn
                  ? const Expanded(
                      child: Center(
                        child: CupertinoActivityIndicator(),
                      ),
                    )
                  : Expanded(
                      child: card[_selectedSegment],
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
