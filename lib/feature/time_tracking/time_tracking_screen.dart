import 'package:final_capstone/feature/time_tracking/custom_timeline_connector.dart';
import 'package:final_capstone/utilities/app_router.dart';
import 'package:final_capstone/utilities/fonts.dart';
import 'package:final_capstone/utilities/global_constants.dart';
import 'package:final_capstone/utilities/svg_icons.dart';
import 'package:final_capstone/widgets/custom_circle_button.dart';
import 'package:final_capstone/widgets/custom_cupertino_nav_bar.dart';
import 'package:final_capstone/widgets/custom_icon_button.dart';
import 'package:final_capstone/widgets/custom_tag.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class TimeTrackingScreen extends StatelessWidget {
  static const String route = '/time-tracking-screen';
  final DateTime? chosenDate;
  final List<String> _days = [
    'Mo',
    'Di',
    'Mi',
    'Do',
    'Fr',
    'Sa',
    'So',
  ];

  TimeTrackingScreen({
    Key? key,
    required this.chosenDate,
  }) : super(key: key);

  String get _todaysDay => DateFormat('EEEE', 'de').format(chosenDate!);

  String get _todaysDate => DateFormat('MM.dd.yyyy').format(chosenDate!);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CustomCupertinoNavBar(
        middle: Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                CustomIconButton(
                  icon: menuIcon,
                  onPressed: () =>
                      Navigator.of(context).pushNamed('/drawer-screen'),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RobotoFont(
                            text: _todaysDay,
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                          ),
                          Row(
                            children: [
                              const CustomTag(
                                text: 'Offen',
                                height: 20,
                              ),
                              const SizedBox(width: 5),
                              RobotoFont(
                                text: _todaysDate,
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                fontColor: Colors.grey,
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Spacer(),
                      CustomCircleButton(
                        icon: calendarDottedIcon,
                        onPressed: () => Navigator.of(context)
                            .pushNamed('/year-calendar-screen'),
                        color: Colors.black,
                        innerColor: Colors.white,
                      ),
                      const SizedBox(width: 15),
                      CustomCircleButton(
                        icon: addIcon,
                        onPressed: () => Navigator.of(context).pushNamed(
                          '/add-time-record-screen',
                          arguments: AddTimeRecordScreenArguments(
                            chosenDate: chosenDate,
                          ),
                        ),
                        color: const Color(0xFFE0E0E0),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      child: SafeArea(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              padding: globalMargin,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  _days.length,
                  (index) => Column(
                    children: [
                      CustomCircleButton(
                        icon: (_todaysDay.contains(_days[index], 0))
                            ? const Icon(CupertinoIcons.pencil)
                            : RobotoFont(
                                text: _days[index],
                                fontWeight: FontWeight.w500,
                                fontSize: 22,
                                fontColor: const Color(0xFFE0E0E0),
                              ),
                        onPressed: () {},
                        color: (_todaysDay.contains(_days[index], 0))
                            ? Colors.purple
                            : CupertinoColors.systemGrey6,
                        radius: 22,
                      ),
                      const SizedBox(height: 10),
                      RobotoFont(
                        text: _days[index],
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        fontColor: (_todaysDay.contains(_days[index], 0))
                            ? Colors.purple
                            : Colors.black,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  CustomTimelineConnector(
                    initialDisplayDate: chosenDate,
                    view: CalendarView.day,
                    margin: globalMargin,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: IntrinsicHeight(
                      child: Container(
                        margin: middleContainerPadding,
                        padding: globalMargin,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(35)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                RobotoFont(
                                  text: '08 : 00 Std.',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 22,
                                ),
                                RobotoFont(
                                  text: 'Arbeitszeiten insgesamt für Heute',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  fontColor: Colors.grey,
                                ),
                              ],
                            ),
                            CustomCircleButton(
                              icon: paperPlaneIcon,
                              onPressed: () {},
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
