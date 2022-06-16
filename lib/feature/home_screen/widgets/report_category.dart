import 'package:final_capstone/widgets/custom_cupertino_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:final_capstone/utilities/fonts.dart';
import 'package:final_capstone/utilities/svg_icons.dart';
import 'package:intl/intl.dart';

class ReportCategory extends StatelessWidget {
  final String header;

  const ReportCategory({
    Key? key,
    required this.header,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentMonth =
        DateFormat('MMMM yyyy').format(DateTime.now()).toString();
    final bootcampFinalWeekFirstDay = DateFormat('dd.MM')
        .format(DateFormat('MMMM dd').parse('June 12 2022'))
        .toString();
    final bootcampFinalWeekLastDay = DateFormat('dd.MM.yyyy')
        .format(DateFormat('MMMM dd yyyy').parse('June 17 2022'))
        .toString();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RobotoFont(
          text: header,
          fontWeight: FontWeight.w500,
          fontSize: 22,
        ),
        const SizedBox(height: 25),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              calendarIcon,
              const SizedBox(width: 25),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RobotoFont(
                    text: (header == 'Wochenbericht')
                        ? '$bootcampFinalWeekFirstDay - $bootcampFinalWeekLastDay'
                        : currentMonth,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                  const SizedBox(height: 15),
                  CustomCupertinoButton(
                    text: (header == 'Wochenbericht')
                        ? 'Wochenbericht zuschicken'
                        : 'Monatsbericht erstellen',
                    icon: paperPlaneIcon,
                    onPressed: () {},
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
