import 'package:final_capstone/feature/home_screen/widgets/az_account_container.dart';
import 'package:final_capstone/feature/home_screen/widgets/leaves_container.dart';
import 'package:final_capstone/feature/home_screen/widgets/profile_summary.dart';
import 'package:final_capstone/feature/home_screen/widgets/report_category.dart';
import 'package:final_capstone/feature/home_screen/widgets/sick_days_container.dart';
import 'package:final_capstone/utilities/global_constants.dart';
import 'package:final_capstone/utilities/svg_icons.dart';
import 'package:final_capstone/widgets/custom_cupertino_nav_bar.dart';
import 'package:final_capstone/widgets/custom_icon_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:final_capstone/models/profile.dart';

class HomeScreen extends StatelessWidget {
  final Profile myProfile;
  final Profile supervisorProfile;
  final bool isLoggingIn;

  const HomeScreen({
    Key? key,
    required this.myProfile,
    required this.supervisorProfile,
    required this.isLoggingIn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CustomCupertinoNavBar(
        leading: CustomIconButton(
          icon: menuIcon,
          onPressed: () => Navigator.of(context).pushNamed('/drawer-screen'),
        ),
      ),
      child: SafeArea(
        child: isLoggingIn
            ? const Center(child: CupertinoActivityIndicator())
            : Container(
                margin: globalMargin,
                child: ListView(
                  children: [
                    Container(
                      padding: upperContainerPadding,
                      color: CupertinoColors.white,
                      child: Column(
                        children: [
                          ProfileSummary(
                            profile: myProfile,
                            header: 'Mein Konto',
                          ),
                          const SizedBox(height: 50),
                          ProfileSummary(
                            profile: supervisorProfile,
                            header: 'Vorgesetzte(r)',
                          ),
                          const SizedBox(height: 50),
                          const ReportCategory(header: 'Wochenbericht'),
                          const SizedBox(height: 50),
                          const ReportCategory(header: 'Monatsbericht'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15),
                    LeavesContainer(myProfile: myProfile),
                    const SizedBox(height: 15),
                    SickDaysContainer(myProfile: myProfile),
                    const SizedBox(height: 15),
                    AzAccountContainer(myProfile: myProfile),
                  ],
                ),
              ),
      ),
    );
  }
}
