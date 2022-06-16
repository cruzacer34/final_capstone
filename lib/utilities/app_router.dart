import 'package:final_capstone/feature/add_time_record_screen/add_time_record_screen_connector.dart';
import 'package:final_capstone/feature/add_time_record_screen/sub_time_screen.dart';
import 'package:final_capstone/feature/apply_leave_screen/apply_leave_screen_connector.dart';
import 'package:final_capstone/feature/business_card_screen/business_card_screen_connector.dart';
import 'package:final_capstone/feature/drawer_screen/drawer_screen_connector.dart';
import 'package:final_capstone/feature/home_screen/home_screen_connector.dart';
import 'package:final_capstone/feature/time_tracking/time_tracking_screen.dart';
import 'package:final_capstone/feature/time_tracking/year_calendar_screen.dart';
import 'package:final_capstone/models/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:final_capstone/feature/login_screen.dart';
import 'package:page_transition/page_transition.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case LoginScreen.route:
        return CupertinoPageRoute(
          builder: (_) => const LoginScreen(),
        );

      case HomeScreenConnector.route:
        return CupertinoPageRoute(
          builder: (_) => const HomeScreenConnector(),
        );

      case DrawerScreenConnector.route:
        return PageTransition(
          child: const DrawerScreenConnector(),
          duration: const Duration(milliseconds: 100),
          reverseDuration: const Duration(milliseconds: 100),
          type: PageTransitionType.leftToRight,
        );

      case BusinessCardScreenConnector.route:
        return CupertinoPageRoute(
          builder: (_) => const BusinessCardScreenConnector(),
        );

      case ApplyLeaveScreenConnector.route:
        return CupertinoPageRoute(
          builder: (_) => const ApplyLeaveScreenConnector(),
        );

      case YearCalendarScreen.route:
        return CupertinoPageRoute(
          builder: (_) => YearCalendarScreen(),
        );

      case TimeTrackingScreen.route:
        final args = settings.arguments as TimeTrackingScreenArguments;
        return CupertinoPageRoute(
          builder: (_) => TimeTrackingScreen(chosenDate: args.chosenDate),
        );

      case AddTimeRecordScreenConnector.route:
        final args = settings.arguments as AddTimeRecordScreenArguments;
        return CupertinoPageRoute(
          builder: (_) =>
              AddTimeRecordScreenConnector(chosenDate: args.chosenDate),
        );

      case SubTimeScreen.route:
        final args = settings.arguments as SubTimeScreenArguments;
        return CupertinoPageRoute(
          builder: (_) => SubTimeScreen(
            appBarColor: args.appBarColor,
            header: args.header,
            projectNumber: args.projectNumber,
            chosenDate: args.chosenDate,
            myProfile: args.myProfile,
            chosenCategory: args.chosenCategory,
          ),
        );

      default:
        return CupertinoPageRoute(
          builder: (_) => CupertinoPageScaffold(
            child: Center(
              child: Text('Error: No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}

class TimeTrackingScreenArguments {
  final DateTime? chosenDate;

  TimeTrackingScreenArguments({required this.chosenDate});
}

class AddTimeRecordScreenArguments {
  final DateTime? chosenDate;

  AddTimeRecordScreenArguments({required this.chosenDate});
}

class SubTimeScreenArguments {
  final Color appBarColor;
  final String header;
  final String? projectNumber;
  final DateTime? chosenDate;
  final Profile myProfile;
  final String chosenCategory;

  SubTimeScreenArguments({
    required this.appBarColor,
    required this.header,
    required this.projectNumber,
    required this.chosenDate,
    required this.myProfile,
    required this.chosenCategory,
  });
}
