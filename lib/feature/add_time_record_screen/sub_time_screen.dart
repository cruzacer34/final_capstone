import 'package:final_capstone/feature/add_time_record_screen/widgets/custom_time_picker.dart';
import 'package:final_capstone/feature/add_time_record_screen/widgets/drop_down_category.dart';
import 'package:final_capstone/models/profile.dart';
import 'package:final_capstone/utilities/fonts.dart';
import 'package:final_capstone/utilities/global_constants.dart';
import 'package:final_capstone/utilities/svg_icons.dart';
import 'package:final_capstone/widgets/custom_cupertino_button.dart';
import 'package:final_capstone/widgets/custom_cupertino_nav_bar.dart';
import 'package:final_capstone/widgets/custom_icon_button.dart';
import 'package:final_capstone/widgets/notes_text_field.dart';
import 'package:final_capstone/widgets/profile_pic.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

class SubTimeScreen extends StatefulWidget {
  static const String route = '/sub-time-screen';

  final Color appBarColor;
  final String header;
  final String? projectNumber;
  final DateTime? chosenDate;
  final Profile myProfile;
  final String chosenCategory;

  const SubTimeScreen({
    Key? key,
    required this.appBarColor,
    required this.projectNumber,
    required this.header,
    required this.chosenDate,
    required this.myProfile,
    required this.chosenCategory,
  }) : super(key: key);

  @override
  State<SubTimeScreen> createState() => _SubTimeScreenState();
}

class _SubTimeScreenState extends State<SubTimeScreen> {
  //String? _category;
  DateTime? _startTime;
  DateTime? _endTime;
  String? _notes;

  String get today => DateFormat('yyyy-MM-dd').format(widget.chosenDate!);

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
      backgroundColor: CupertinoColors.white,
      navigationBar: CustomCupertinoNavBar(
        backgroundColor: widget.appBarColor,
        trailing: Padding(
          padding: const EdgeInsets.only(left: 35),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                CustomIconButton(
                  icon: backWhiteIcon,
                  onPressed: () => Navigator.of(context).pop(),
                ),
                const SizedBox(width: 25),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AllertaFont(
                      text: widget.header,
                      fontSize: 16,
                      fontColor: CupertinoColors.white,
                    ),
                    MulishFont(
                      text: 'Projekt: ${widget.projectNumber}',
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                      fontColor: CupertinoColors.white,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      child: SafeArea(
        child: Container(
          margin: upperContainerPadding,
          child: Column(
            children: [
              DropDownCategory(
                header: 'Kategorie',
                items: const ['eleg'],
                choice: widget.chosenCategory,
                isSubTime: true,
                onChanged: (test) {},
                onRemoveChoice: () {},
              ),
              const SizedBox(height: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AllertaFont(
                    text: widget.header,
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
                      fontColor: CupertinoColors.black,
                    ),
                  ),
                  CustomCupertinoButton(
                    text: 'Speichern',
                    onPressed: () {},
                    icon: paperPlaneIcon,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
