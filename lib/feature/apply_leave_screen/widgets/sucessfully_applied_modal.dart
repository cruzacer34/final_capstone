import 'package:final_capstone/utilities/fonts.dart';
import 'package:final_capstone/utilities/global_constants.dart';
import 'package:final_capstone/utilities/svg_icons.dart';
import 'package:final_capstone/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class SuccessfullyAppliedModal extends StatelessWidget {
  const SuccessfullyAppliedModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
      padding: middleContainerPadding,
      decoration: topContainerRadius,
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: CustomIconButton(
              icon: SizedBox(
                height: 20,
                width: 20,
                child: closeIcon,
              ),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
          const Spacer(),
          Column(
            children: [
              SizedBox(
                height: 50,
                width: 50,
                child: selectedTimeTrackingScreenIcon,
              ),
              const SizedBox(height: 25),
              const AllertaFont(
                text: 'Vielen Dank',
                fontSize: 22,
              ),
              const SizedBox(height: 10),
              const MulishFont(
                text: 'Wir haben Ihren Antrag erfasst.',
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ],
          ),
          const SizedBox(height: kBottomNavigationBarHeight),
        ],
      ),
    );
  }
}
