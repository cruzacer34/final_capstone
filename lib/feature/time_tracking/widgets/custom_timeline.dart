import 'package:final_capstone/models/time_record.dart';
import 'package:final_capstone/utilities/fonts.dart';
import 'package:final_capstone/utilities/global_constants.dart';
import 'package:final_capstone/utilities/svg_icons.dart';
import 'package:final_capstone/widgets/profile_pic.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class CustomTimeline extends StatelessWidget {
  final DateTime? initialDisplayDate;
  final Function(CalendarTapDetails)? onTap;
  final CalendarView view;
  final Color? cellBorderColor;
  final EdgeInsets? margin;
  final List<TimeRecord>? allTimeRecords;

  const CustomTimeline({
    Key? key,
    required this.initialDisplayDate,
    this.onTap,
    required this.view,
    this.cellBorderColor,
    this.margin,
    this.allTimeRecords,
  }) : super(key: key);

  Color _getColor(TimeRecord appointment) {
    if (appointment.type == 'Arbeitszeit') {
      return Colors.lightBlueAccent.withOpacity(0.12);
    } else if (appointment.type == 'Pause') {
      return Colors.purple.withOpacity(0.45);
    } else if (appointment.type == 'Bereitschaftszeit') {
      return Colors.redAccent.withOpacity(0.64);
    } else {
      return Colors.orangeAccent;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: SfCalendar(
        onTap: onTap,
        viewNavigationMode: ViewNavigationMode.none,
        timeSlotViewSettings: const TimeSlotViewSettings(
          timeFormat: 'hh:mm',
          timeTextStyle: timeOfDayTextStyle,
          startHour: 6.5,
          endHour: 20,
          timeIntervalHeight: 150,
          timeInterval: Duration(minutes: 30),
        ),
        dataSource: TestSource(allTimeRecords),
        monthViewSettings: const MonthViewSettings(
          monthCellStyle: MonthCellStyle(
            textStyle: focusedDatesTextStyle,
            trailingDatesTextStyle: unfocusedDatesTextStyle,
            leadingDatesTextStyle: unfocusedDatesTextStyle,
          ),
        ),
        selectionDecoration: const BoxDecoration(
          color: Colors.transparent,
        ),
        viewHeaderHeight: 0,
        headerHeight: (view == CalendarView.day) ? 0 : 40,
        headerDateFormat: 'MMMM',
        view: view,
        todayTextStyle: todayTextStyle,
        headerStyle: const CalendarHeaderStyle(
          textStyle: monthHeaderTextStyle,
        ),
        initialDisplayDate: initialDisplayDate,
        todayHighlightColor: Colors.purple,
        cellBorderColor: cellBorderColor,
        appointmentBuilder: (context, timeRecordDetails) {
          final TimeRecord appointment = timeRecordDetails.appointments.first;
          return Container(
            padding: globalMargin,
            decoration: BoxDecoration(
              color: _getColor(appointment),
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            child: IntrinsicWidth(
              child: ListView(
                children: [
                  RobotoFont(
                    text: '(Projekt: ${appointment.projectNumber.toString()})',
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                  const SizedBox(height: 10),
                  RobotoFont(
                    text:
                        '${appointment.type}: ${DateFormat('hh:mm').format(appointment.startTime)}'
                        ' - '
                        '${DateFormat('hh:mm').format(appointment.endTime)} Uhr',
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                  const SizedBox(height: 10),
                  if (appointment.includedAssociates != null &&
                      appointment.includedAssociates!.isNotEmpty)
                    Wrap(
                      runSpacing: 10,
                      children: List.generate(
                        appointment.includedAssociates!.length,
                        (index) => ProfilePic(
                          profile: appointment.includedAssociates![index],
                          size: 50,
                        ),
                      ),
                    ),
                  if (appointment.notes != null)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 10),
                        SizedBox(
                          height: 30,
                          width: 30,
                          child: messageIcon,
                        ),
                      ],
                    ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class TestSource extends CalendarDataSource {
  TestSource(List<TimeRecord>? source) {
    appointments = source;
  }

  @override
  DateTime getStartTime(int index) {
    return appointments![index].startTime;
  }

  @override
  DateTime getEndTime(int index) {
    return appointments![index].endTime;
  }

  @override
  String getSubject(int index) {
    return appointments![index].projectNumber.toString();
  }

  @override
  Color getColor(int index) {
    if (appointments![index].type == 'Arbeitszeit') {
      return Colors.lightBlueAccent;
    } else if (appointments![index].type == 'Pause') {
      return Colors.purple.withOpacity(0.45);
    } else if (appointments![index].type == 'Bereitschaftszeit') {
      return Colors.redAccent.withOpacity(0.64);
    } else {
      return Colors.orangeAccent;
    }
  }
}
