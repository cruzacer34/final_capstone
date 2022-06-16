import 'package:final_capstone/feature/time_tracking/widgets/custom_timeline_connector.dart';
import 'package:final_capstone/utilities/app_router.dart';
import 'package:final_capstone/utilities/fonts.dart';
import 'package:final_capstone/utilities/global_constants.dart';
import 'package:final_capstone/utilities/svg_icons.dart';
import 'package:final_capstone/widgets/custom_circle_button.dart';
import 'package:final_capstone/widgets/custom_cupertino_nav_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class YearCalendarScreen extends StatelessWidget {
  static const String route = '/year-calendar-screen';
  final List<String> _months = List.generate(
    12,
    (index) => (index + 1).toString(),
  );
  final String _thisYear = DateFormat('yyyy').format(DateTime.now());

  YearCalendarScreen({Key? key}) : super(key: key);

  DateTime? _monthHeader(int index1, int index2) {
    if (index1 == 0) {
      return DateTime.parse('$_thisYear-0${_months[index2]}-01');
    } else if (index1 == 1) {
      return DateTime.parse('$_thisYear-0${_months[index2 + 3]}-01');
    } else if (index1 == 2) {
      return DateTime.parse('$_thisYear-0${_months[index2 + 6]}-01');
    } else {
      return DateTime.parse('$_thisYear-${_months[index2 + 9]}-01');
    }
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors.white,
      navigationBar: CustomCupertinoNavBar(
        trailing: Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Row(
              children: [
                CustomCircleButton(
                  icon: closeIcon,
                  onPressed: () => Navigator.of(context).pop(),
                  color: const Color(0xFFE0E0E0),
                ),
                const SizedBox(width: 20),
                RobotoFont(
                  text: _thisYear,
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),
          ),
        ),
      ),
      child: SafeArea(
        child: ListView.separated(
          padding: upperContainerPadding,
          shrinkWrap: true,
          itemCount: 4,
          itemBuilder: (context, index1) => SizedBox(
            height: 150,
            child: Row(
              children: List.generate(
                3,
                (index2) => Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: CustomTimelineConnector(
                          initialDisplayDate: _monthHeader(index1, index2),
                          view: CalendarView.month,
                          cellBorderColor: Colors.transparent,
                          onTap: (chosenDate) =>
                              Navigator.of(context).pushNamed(
                            '/time-tracking-screen',
                            arguments: TimeTrackingScreenArguments(
                              chosenDate: chosenDate.date,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: (index2 == 2) ? 0 : 10),
                    ],
                  ),
                ),
              ),
            ),
          ),
          separatorBuilder: (context, index) => const SizedBox(height: 10),
        ),
      ),
    );
  }
}
