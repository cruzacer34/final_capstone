import 'package:final_capstone/utilities/fonts.dart';
import 'package:final_capstone/utilities/global_constants.dart';
import 'package:final_capstone/utilities/svg_icons.dart';
import 'package:final_capstone/widgets/custom_circle_button.dart';
import 'package:final_capstone/widgets/custom_icon_button.dart';
import 'package:final_capstone/widgets/notes_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SubmitTimeRecordModal extends StatelessWidget {
  final String todaysDay;
  final String todaysDate;
  final Map<String, String> _summary = {
    'Arbeitszeit': '8 Std.',
    'Pause': '8 Std.',
    'Wartezeit': '8 Std.',
    'Bereitschaftszeit': '8 Std.',
  };

  SubmitTimeRecordModal({
    Key? key,
    required this.todaysDay,
    required this.todaysDate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: topContainerRadius,
      padding: upperContainerPadding,
      height: MediaQuery.of(context).size.height * 0.55,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RobotoFont(
                    text: todaysDay,
                    fontWeight: FontWeight.w500,
                    fontSize: 22,
                  ),
                  CustomIconButton(
                    icon: closeIcon,
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              RobotoFont(
                text: todaysDate,
                fontWeight: FontWeight.w400,
                fontSize: 12,
                fontColor: Colors.grey,
              ),
            ],
          ),
          ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            itemCount: _summary.length,
            itemBuilder: (context, index) => Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RobotoFont(
                  text: _summary.keys.toList()[index],
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
                RobotoFont(
                  text: _summary.values.toList()[index],
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ],
            ),
            separatorBuilder: (context, index) => const SizedBox(height: 20),
          ),
          Container(
            decoration: applyLeavesNotesBoxDecoration,
            height: 75,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 10, left: 10),
                  // child: ProfilePic(
                  //   profile: myProfile,
                  //   size: 65,
                  // ),
                  child: CircleAvatar(),
                ),
                const SizedBox(width: 5),
                NotesTextField(
                  onChanged: (notes) {},
                  readOnly: true,
                ),
              ],
            ),
          ),
          Row(
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
                onPressed: () => showCupertinoModalPopup(
                  context: context,
                  builder: (context) => Container(
                    height: MediaQuery.of(context).size.height / 2,
                    decoration: topContainerRadius,
                  ),
                ).then((value) => Navigator.of(context).pop()),
                color: Colors.orangeAccent,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
