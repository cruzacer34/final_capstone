import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:final_capstone/feature/apply_leave_screen/widgets/apply_leave_modal/apply_leave_modal_connector.dart';
import 'package:final_capstone/feature/apply_leave_screen/widgets/custom_calendar.dart';
import 'package:final_capstone/models/leave_request.dart';
import 'package:final_capstone/utilities/fonts.dart';
import 'package:final_capstone/utilities/global_constants.dart';
import 'package:final_capstone/utilities/svg_icons.dart';
import 'package:final_capstone/widgets/custom_cupertino_button.dart';
import 'package:final_capstone/widgets/custom_cupertino_nav_bar.dart';
import 'package:final_capstone/widgets/custom_icon_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

enum Tabs {
  monat,
  jahr,
}

class ApplyLeaveScreen extends StatefulWidget {
  final List<LeaveRequest>? leaveRequests;
  final bool isGettingLeaveRequests;

  const ApplyLeaveScreen({
    Key? key,
    this.leaveRequests,
    required this.isGettingLeaveRequests,
  }) : super(key: key);

  @override
  State<ApplyLeaveScreen> createState() => _ApplyLeaveScreenState();
}

class _ApplyLeaveScreenState extends State<ApplyLeaveScreen> {
  Tabs _selectedSegment = Tabs.monat;
  final _singlePickerController = DateRangePickerController();
  final _pageController = PageController(initialPage: 1);
  final _yearController = PageController(initialPage: 1);
  final List<int> _years = [
    2021,
    2022,
    2023,
  ];
  final List<DateRangePickerController> _listPickerController = List.generate(
    3,
    (index) => DateRangePickerController(),
  );
  DateTime? _startDate;
  DateTime? _endDate;
  String _currentYear = DateFormat('yyyy').format(DateTime.now());
  final List<DateTime> _allDaysOfRequestedLeaves = [];

  @override
  void dispose() {
    _pageController.dispose();
    _singlePickerController.dispose();
    _yearController.dispose();
    super.dispose();
  }

  Future<void> _back(PageController controller) {
    return controller.animateToPage(
      _pageController.page!.toInt() - 1,
      duration: const Duration(seconds: 1),
      curve: Curves.ease,
    );
  }

  Future<void> _forward(PageController controller) {
    return controller.animateToPage(
      _pageController.page!.toInt() + 1,
      duration: const Duration(seconds: 1),
      curve: Curves.ease,
    );
  }

  Future<void> _current(PageController controller) {
    return controller.animateToPage(
      1,
      duration: const Duration(seconds: 1),
      curve: Curves.ease,
    );
  }

  void _goToToday() {
    setState(() {
      _currentYear = DateFormat('yyyy').format(DateTime.now());
    });
    _singlePickerController.displayDate = DateTime.now();
    if (_selectedSegment.index == 1) {
      _current(_pageController);
      _current(_yearController);
    }
  }

  void _getSelectedDates(DateRangePickerSelectionChangedArgs args) {
    setState(() {
      _startDate = args.value.startDate;
      _endDate = args.value.endDate;
    });
  }

  void _onTabChanged(Tabs? value) {
    if (value != null) {
      setState(() {
        _selectedSegment = value;
        _startDate = null;
        _endDate = null;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    bool isApplying = true;
    if (widget.leaveRequests != null) {
      for (var value in widget.leaveRequests!) {
        for (var value in value.days) {
          _allDaysOfRequestedLeaves.add(value);
        }
      }
    }
    if (_allDaysOfRequestedLeaves.contains(_startDate) ||
        _allDaysOfRequestedLeaves.contains(_endDate)) {
      isApplying = false;
    }
    return CupertinoPageScaffold(
      resizeToAvoidBottomInset: false,
      navigationBar: CustomCupertinoNavBar(
        trailing: Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 35),
            child: Row(
              children: [
                CustomIconButton(
                  icon: backIcon,
                  onPressed: () => Navigator.of(context).pop(),
                ),
                const SizedBox(width: 20),
                const AllertaFont(
                  text: 'Mein Konto',
                  fontSize: 22,
                ),
              ],
            ),
          ),
        ),
      ),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.white,
              padding: globalMargin,
              child: SizedBox(
                height: 60,
                child: Material(
                  child: CustomSlidingSegmentedControl<Tabs>(
                    isStretch: true,
                    children: <Tabs, Widget>{
                      Tabs.monat: AllertaFont(
                        text: 'Monat',
                        fontSize: 17,
                        fontColor: (_selectedSegment.index == 0)
                            ? Colors.black
                            : Colors.grey,
                      ),
                      Tabs.jahr: AllertaFont(
                        text: 'Jahr',
                        fontSize: 17,
                        fontColor: (_selectedSegment.index == 1)
                            ? Colors.black
                            : Colors.grey,
                      ),
                    },
                    onValueChanged: _onTabChanged,
                    height: 100,
                    decoration: BoxDecoration(
                      image: tabBackgroundImage,
                      color: CupertinoTheme.of(context).scaffoldBackgroundColor,
                    ),
                    thumbDecoration: const BoxDecoration(
                      border: selectedTabUnderline,
                    ),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: globalMargin,
                  child: CustomCupertinoButton(
                    text: 'Huete',
                    onPressed: _goToToday,
                  ),
                ),
                if (_selectedSegment.index == 1)
                  Row(
                    children: [
                      CustomIconButton(
                        icon: backIcon,
                        onPressed: () {
                          _back(_yearController);
                          _back(_pageController);
                        },
                      ),
                      const SizedBox(width: 10),
                      SizedBox(
                        height: 50,
                        width: 110,
                        child: PageView.builder(
                          controller: _yearController,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: _years.length,
                          itemBuilder: (context, index) => AllertaFont(
                            text: _years[index].toString(),
                            fontSize: 42,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      CustomIconButton(
                        icon: forwardIcon,
                        onPressed: () {
                          _forward(_yearController);
                          _forward(_pageController);
                        },
                      ),
                    ],
                  ),
              ],
            ),
            (widget.isGettingLeaveRequests)
                ? const Expanded(
                    child: Center(
                      child: CupertinoActivityIndicator(),
                    ),
                  )
                : SizedBox(
                    height: 250,
                    child: (_selectedSegment.index == 0)
                        ? CustomCalendar(
                            onSelectionChanged: _getSelectedDates,
                            year: int.parse(_currentYear),
                            selectedTab: _selectedSegment,
                            pickerController: _singlePickerController,
                            leaveRequests: widget.leaveRequests,
                          )
                        : PageView.builder(
                            controller: _pageController,
                            scrollDirection: Axis.vertical,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: _years.length,
                            itemBuilder: (context, index) {
                              _currentYear = _years[index].toString();
                              return CustomCalendar(
                                onSelectionChanged: _getSelectedDates,
                                selectedTab: _selectedSegment,
                                year: _years[index],
                                pickerController: _listPickerController[index],
                                leaveRequests: widget.leaveRequests,
                              );
                            },
                          ),
                  ),
            Container(
              padding: rightValuesPadding,
              alignment: Alignment.centerRight,
              child: CustomCupertinoButton(
                text: 'Apply Leave',
                onPressed: (_startDate != null || _endDate != null)
                    ? () => showCupertinoModalPopup(
                          barrierDismissible: true,
                          context: context,
                          builder: (context) => ApplyLeaveModalConnector(
                            startDate: _startDate!,
                            endDate: _endDate,
                            isApplying: isApplying,
                          ),
                        )
                    : null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
