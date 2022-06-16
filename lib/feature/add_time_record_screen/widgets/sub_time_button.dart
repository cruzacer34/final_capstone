import 'package:final_capstone/utilities/fonts.dart';
import 'package:final_capstone/utilities/svg_icons.dart';
import 'package:final_capstone/widgets/custom_circle_button.dart';
import 'package:flutter/material.dart';

class SubTimeButton extends StatelessWidget {
  final String header;
  final Color color;
  final Function() onPressed;

  const SubTimeButton({
    Key? key,
    required this.header,
    required this.color,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AllertaFont(
              text: header,
              fontSize: 22,
            ),
            const RobotoFont(
              text: 'hinzufügen oder bearbeiten',
              fontWeight: FontWeight.w400,
              fontSize: 14,
              fontColor: Colors.grey,
            ),
          ],
        ),
        CustomCircleButton(
          icon: addWhiteIcon,
          onPressed: onPressed,
          color: color,
        ),
      ],
    );
  }
}
