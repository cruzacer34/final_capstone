import 'package:async_redux/async_redux.dart';
import 'package:final_capstone/feature/time_tracking/custom_timeline.dart';
import 'package:final_capstone/feature/time_tracking/custom_timeline_vm_factory.dart';
import 'package:final_capstone/state/actions/actions_time_record.dart';
import 'package:final_capstone/state/app_state.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class CustomTimelineConnector extends StatelessWidget {
  final DateTime? initialDisplayDate;
  final Function(CalendarTapDetails)? onTap;
  final CalendarView view;
  final Color? cellBorderColor;
  final EdgeInsets? margin;

  const CustomTimelineConnector({
    Key? key,
    this.initialDisplayDate,
    this.onTap,
    required this.view,
    this.cellBorderColor,
    this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, CustomTimelineVM>(
      onInit: (store) => store.dispatch(GetTimeRecordsAction()),
      vm: () => CustomTimelineFactory(),
      builder: (context, vm) => CustomTimeline(
        initialDisplayDate: initialDisplayDate,
        view: view,
        allTimeRecords: vm.timeRecords,
        cellBorderColor: cellBorderColor,
        onTap: onTap,
      ),
    );
  }
}
