import 'package:final_capstone/feature/drawer_screen/drawer_button.dart';
import 'package:final_capstone/utilities/svg_icons.dart';
import 'package:final_capstone/widgets/custom_cupertino_nav_bar.dart';
import 'package:final_capstone/widgets/custom_icon_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget {
  final int menuIndex;
  final Function() goToHomeScreen;
  final Function() goToBusinessCardScreen;
  final Function() goToTimeTrackingScreen;

  const DrawerScreen({
    Key? key,
    required this.menuIndex,
    required this.goToHomeScreen,
    required this.goToBusinessCardScreen,
    required this.goToTimeTrackingScreen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors.white,
      navigationBar: CustomCupertinoNavBar(
        leading: CustomIconButton(
          icon: closeIcon,
          onPressed: () => Navigator.of(context).pop(),
        ),
        trailing: SizedBox(
          height: 40,
          width: 40,
          child: logo,
        ),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 50, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DrawerButton(
                goTo: goToHomeScreen,
                menuIndex: menuIndex,
                thisIndex: 0,
                selectedIcon: selectedHomeScreenIcon,
                unselectedIcon: unselectedHomeScreenIcon,
                header: 'Mein Konto',
              ),
              DrawerButton(
                goTo: goToBusinessCardScreen,
                menuIndex: menuIndex,
                thisIndex: 1,
                selectedIcon: selectedBusinessCardScreenIcon,
                unselectedIcon: unselectedBusinessCardScreenIcon,
                header: 'Visitenkarte',
              ),
              DrawerButton(
                goTo: goToTimeTrackingScreen,
                menuIndex: menuIndex,
                thisIndex: 2,
                selectedIcon: selectedTimeTrackingScreenIcon,
                unselectedIcon: unselectedTimeTrackingScreenIcon,
                header: 'Zeiterfassung',
              ),
              DrawerButton(
                goTo: () {},
                menuIndex: menuIndex,
                thisIndex: 3,
                unselectedIcon: unselectedMyBetsScreenIcon,
                header: 'Meine Einsatze',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
