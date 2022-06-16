import 'package:final_capstone/models/leave_request.dart';
import 'package:final_capstone/utilities/global_constants.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:final_capstone/feature/apply_leave_screen/apply_leave_screen.dart';

class CustomCalendar extends StatelessWidget {
  final Tabs selectedTab;
  final int year;
  final DateRangePickerController? pickerController;
  final Function(DateRangePickerSelectionChangedArgs args) onSelectionChanged;
  final List<LeaveRequest>? leaveRequests;
  final List<DateTime> _allDaysOfRequestedLeaves = [];

  CustomCalendar({
    Key? key,
    required this.selectedTab,
    required this.year,
    this.pickerController,
    required this.onSelectionChanged,
    this.leaveRequests,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    for(var value in leaveRequests!){
      for (var value in value.days){
        _allDaysOfRequestedLeaves.add(value);
      }
    }
    return Container(
      margin: globalMargin,
      child: SfDateRangePicker(
        onSelectionChanged: onSelectionChanged,
        controller: pickerController,
        showNavigationArrow: (selectedTab.index == 0) ? true : false,
        minDate: DateTime.utc(year, 1, 1),
        maxDate: DateTime.utc(year, 12, 31),
        enableMultiView: true,
        allowViewNavigation: false,
        selectionShape: DateRangePickerSelectionShape.rectangle,
        selectionTextStyle: chosenDatesTextStyle,
        todayHighlightColor: Colors.black,
        selectionMode: DateRangePickerSelectionMode.range,
        showTodayButton: true,
        startRangeSelectionColor: Colors.purple,
        endRangeSelectionColor: Colors.black,
        rangeSelectionColor: Colors.white,
        rangeTextStyle: focusedDatesTextStyle,
        monthCellStyle: const DateRangePickerMonthCellStyle(
          textStyle: focusedDatesTextStyle,
          todayTextStyle: focusedDatesTextStyle,
          disabledDatesTextStyle: unfocusedDatesTextStyle,
          trailingDatesTextStyle: unfocusedDatesTextStyle,
          leadingDatesTextStyle: unfocusedDatesTextStyle,
          specialDatesDecoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                width: 3,
                color: Colors.orange,
              ),
            )
          )
        ),
        monthViewSettings: DateRangePickerMonthViewSettings(
          specialDates: _allDaysOfRequestedLeaves,
          showTrailingAndLeadingDates: true,
          dayFormat: '',
          viewHeaderHeight: 0,
        ),
        headerStyle: const DateRangePickerHeaderStyle(
          textAlign: TextAlign.center,
          textStyle: monthHeaderTextStyle,
        ),
      ),
    );
  }
}
