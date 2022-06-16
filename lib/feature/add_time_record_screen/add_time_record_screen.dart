import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:final_capstone/feature/add_time_record_screen/widgets/custom_time_picker.dart';
import 'package:final_capstone/feature/add_time_record_screen/widgets/multi_select_profile.dart';
import 'package:final_capstone/feature/add_time_record_screen/widgets/drop_down_category.dart';
import 'package:final_capstone/models/profile.dart';
import 'package:final_capstone/models/time_record.dart';
import 'package:final_capstone/utilities/app_router.dart';
import 'package:final_capstone/widgets/notes_text_field.dart';
import 'package:final_capstone/feature/add_time_record_screen/widgets/sub_time_button.dart';
import 'package:final_capstone/utilities/fonts.dart';
import 'package:final_capstone/utilities/global_constants.dart';
import 'package:final_capstone/utilities/svg_icons.dart';
import 'package:final_capstone/widgets/custom_cupertino_button.dart';
import 'package:final_capstone/widgets/custom_cupertino_nav_bar.dart';
import 'package:final_capstone/widgets/custom_icon_button.dart';
import 'package:final_capstone/widgets/profile_pic.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

enum Tabs {
  arbeitszeit,
  pause,
}

class AddTimeRecordScreen extends StatefulWidget {
  final bool isGettingAllProfiles;
  final Profile myProfile;
  final List<Profile> allProfiles;
  final DateTime? chosenDate;
  final Function(TimeRecord timeRecord, DateTime today) addTimeRecord;
  final bool isSending;

  const AddTimeRecordScreen({
    Key? key,
    required this.isGettingAllProfiles,
    required this.myProfile,
    required this.allProfiles,
    required this.chosenDate,
    required this.addTimeRecord,
    required this.isSending,
  }) : super(key: key);

  @override
  State<AddTimeRecordScreen> createState() => _AddTimeRecordScreenState();
}

class _AddTimeRecordScreenState extends State<AddTimeRecordScreen> {
  Tabs _selectedSegment = Tabs.arbeitszeit;
  String? _category;
  String? _projectNumber;
  String? _notes;
  DateTime? _startTime;
  DateTime? _endTime;
  List<Profile> _selectedProfiles = [];

  String get today => DateFormat('yyyy-MM-dd').format(widget.chosenDate!);

  @override
  void initState() {
    _startTime = _getCurrentTime();
    _endTime = _getCurrentTime().add(const Duration(minutes: 15));
    super.initState();
  }

  void _onTabChanged(Tabs? value) {
    if (value != null) {
      setState(() {
        _selectedSegment = value;
        _category = null;
        _projectNumber = null;
      });
    }
  }

  DateTime _getCurrentTime() {
    var x = DateFormat('yyyy-MM-dd HH : mm')
        .parse(DateFormat('yyyy-MM-dd HH : mm').format(widget.chosenDate!));
    if (x.minute > 45) {
      var mod = x.subtract(Duration(minutes: x.minute - 45));
      return DateFormat('yyyy-MM-dd HH : mm')
          .parse('$today ${mod.hour} : ${mod.minute} Uhr.');
    } else if (x.minute > 30) {
      var mod = x.subtract(Duration(minutes: x.minute - 30));
      return DateFormat('yyyy-MM-dd HH : mm')
          .parse('$today ${mod.hour} : ${mod.minute} Uhr.');
    } else if (x.minute > 15) {
      var mod = x.subtract(Duration(minutes: x.minute - 15));
      return DateFormat('yyyy-MM-dd HH : mm')
          .parse('$today ${mod.hour} : ${mod.minute} Uhr.');
    } else if (x.minute > 0) {
      var mod = x.subtract(Duration(minutes: x.minute));
      return DateFormat('yyyy-MM-dd HH : mm')
          .parse('$today ${mod.hour} : ${mod.minute}0 Uhr.');
    } else {
      return DateFormat('yyyy-MM-dd HH : mm')
          .parse('$today ${x.hour} : 00 Uhr.');
    }
  }

  Future<void> _addTimeRecord() async {
    try {
      await widget.addTimeRecord(
        TimeRecord(
          category: _category!,
          projectNumber: int.parse(_projectNumber!),
          includedAssociates: _selectedProfiles,
          startTime: _startTime!,
          endTime: _endTime!,
        ),
        widget.chosenDate!,
      );
    } catch (e) {
      print(e);
    } finally {
      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    int clock1Hour = 7;
    int clock1Minutes = 0;
    int clock2Hour = 7;
    int clock2Minutes = 15;
    List<String> clock1 = List.generate(48, (index) {
      if (index == 0) {
        return '7 : 00 Uhr.';
      }
      if (clock1Minutes >= 45) {
        clock1Minutes = 0;
        clock1Hour += 1;
        return '$clock1Hour : 00 Uhr.';
      }
      return '$clock1Hour : ${clock1Minutes += 15} Uhr.';
    });
    List<String> clock2 = List.generate(48, (index) {
      if (index == 0) {
        return '7 : 15 Uhr.';
      }
      if (clock2Minutes >= 45) {
        clock2Minutes = 0;
        clock2Hour += 1;
        return '$clock2Hour : 00 Uhr.';
      }
      return '$clock2Hour : ${clock2Minutes += 15} Uhr.';
    });
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
        child: Column(
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
                      Tabs.arbeitszeit: AllertaFont(
                        text: 'Arbeitszeit',
                        fontSize: 17,
                        fontColor: (_selectedSegment.index == 0)
                            ? Colors.black
                            : Colors.grey,
                      ),
                      Tabs.pause: AllertaFont(
                        text: 'Pause',
                        fontSize: 17,
                        fontColor: (_selectedSegment.index == 1)
                            ? Colors.black
                            : Colors.grey,
                      ),
                    },
                    onValueChanged: _onTabChanged,
                    height: 100,
                    decoration: const BoxDecoration(color: Colors.white),
                    thumbDecoration: BoxDecoration(
                      image: tabBackgroundImage,
                      color: CupertinoTheme.of(context).scaffoldBackgroundColor,
                      border: selectedTabUnderline,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: widget.isGettingAllProfiles
                  ? const CupertinoActivityIndicator()
                  : ListView(
                      padding: globalMargin,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            DropDownCategory(
                              header: 'Kategorie',
                              items: const ['eleg', 'pepelaugh'],
                              onRemoveChoice: () => setState(() {
                                _category = null;
                              }),
                              onChanged: (category) => setState(() {
                                _category = category;
                              }),
                              choice: _category,
                            ),
                            const SizedBox(height: 30),
                            if (_selectedSegment.index == 0)
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  DropDownCategory(
                                    header: 'Projektnummer',
                                    items: const ['141', '34', '117', '707'],
                                    onRemoveChoice: () => setState(() {
                                      _projectNumber = null;
                                    }),
                                    onChanged: (projectNumber) => setState(() {
                                      _projectNumber = projectNumber;
                                    }),
                                    choice: _projectNumber,
                                  ),
                                  const SizedBox(height: 30),
                                  MultiSelectProfile(
                                    items: widget.allProfiles,
                                    onChanged: (selectedProfiles) =>
                                        setState(() {
                                      _selectedProfiles = selectedProfiles;
                                    }),
                                    choices: _selectedProfiles,
                                  ),
                                  const SizedBox(height: 30),
                                ],
                              ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AllertaFont(
                                  text: (_selectedSegment.index == 0)
                                      ? 'Arbeitszeit'
                                      : 'Pause',
                                  fontSize: 22,
                                ),
                                const SizedBox(height: 15),
                                Row(
                                  children: [
                                    CustomTimePicker(
                                      chosenDate: widget.chosenDate,
                                      clock: clock1,
                                      isLeft: true,
                                      onSelectedItemChanged: (chosenTime) =>
                                          setState(() {
                                        _startTime = DateFormat(
                                                'yyyy-MM-dd HH : mm')
                                            .parse(
                                                '$today ${clock1[chosenTime]}.');
                                      }),
                                    ),
                                    const SizedBox(width: 15),
                                    CustomTimePicker(
                                      chosenDate: widget.chosenDate,
                                      clock: clock2,
                                      onSelectedItemChanged: (chosenTime) =>
                                          setState(() {
                                        _endTime = DateFormat(
                                                'yyyy-MM-dd HH : mm')
                                            .parse(
                                                '$today ${clock2[chosenTime]}.');
                                      }),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            if (_category != null &&
                                _projectNumber != null &&
                                _selectedProfiles.isNotEmpty)
                              Column(
                                children: [
                                  const SizedBox(height: 30),
                                  SubTimeButton(
                                    header: 'Pause',
                                    color: Colors.blue,
                                    onPressed: () =>
                                        Navigator.of(context).pushNamed(
                                      '/sub-time-screen',
                                      arguments: SubTimeScreenArguments(
                                        appBarColor: Colors.blue,
                                        header: 'Pause',
                                        projectNumber: _projectNumber,
                                        chosenDate: widget.chosenDate,
                                        myProfile: widget.myProfile,
                                        chosenCategory: _category!,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 30),
                                  SubTimeButton(
                                    header: 'Wartezeit',
                                    color: Colors.orangeAccent,
                                    onPressed: () =>
                                        Navigator.of(context).pushNamed(
                                      '/sub-time-screen',
                                      arguments: SubTimeScreenArguments(
                                        appBarColor: Colors.orangeAccent,
                                        header: 'Wartezeit',
                                        projectNumber: _projectNumber,
                                        chosenDate: widget.chosenDate,
                                        myProfile: widget.myProfile,
                                        chosenCategory: _category!,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 30),
                                  SubTimeButton(
                                    header: 'Bereitschaftszeit',
                                    color: Colors.purple,
                                    onPressed: () =>
                                        Navigator.of(context).pushNamed(
                                      '/sub-time-screen',
                                      arguments: SubTimeScreenArguments(
                                        appBarColor: Colors.purple,
                                        header: 'Bereitschaftszeit',
                                        projectNumber: _projectNumber,
                                        chosenDate: widget.chosenDate,
                                        myProfile: widget.myProfile,
                                        chosenCategory: _category!,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            const SizedBox(height: 30),
                            Container(
                              decoration: applyLeavesNotesBoxDecoration,
                              height: 125,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, left: 10),
                                    child: ProfilePic(
                                      profile: widget.myProfile,
                                      size: 65,
                                    ),
                                  ),
                                  const SizedBox(width: 5),
                                  NotesTextField(
                                    onChanged: (notes) => _notes = notes,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 30),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                CupertinoButton(
                                  onPressed: () => Navigator.of(context).pop(),
                                  child: const RobotoFont(
                                    text: 'Abbrechen',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    fontColor: Colors.black,
                                  ),
                                ),
                                CustomCupertinoButton(
                                  text: 'Speichern',
                                  onPressed: (_category != null &&
                                          _projectNumber != null &&
                                          _selectedProfiles.isNotEmpty &&
                                          !_startTime!
                                              .isAtSameMomentAs(_endTime!) &&
                                          !_startTime!.isAfter(_endTime!))
                                      ? _addTimeRecord
                                      : null,
                                  icon: (widget.isSending)
                                      ? const CupertinoActivityIndicator()
                                      : paperPlaneIcon,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
