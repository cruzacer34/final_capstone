import 'package:final_capstone/utilities/fonts.dart';
import 'package:final_capstone/utilities/global_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

class CustomTimePicker extends StatelessWidget {
  final DateTime? chosenDate;
  final Function(int) onSelectedItemChanged;
  final List<String> clock;
  final bool? isLeft;

  const CustomTimePicker({
    Key? key,
    required this.chosenDate,
    required this.onSelectedItemChanged,
    required this.clock,
    this.isLeft,
  }) : super(key: key);

  String get today => DateFormat('yyyy-MM-dd').format(chosenDate!);

  int _getCurrentTimeIndex(List<String> clock) {
    var x = DateFormat('yyyy-MM-dd HH : mm')
        .parse(DateFormat('yyyy-MM-dd HH : mm').format(chosenDate!));
    if (x.minute > 45) {
      var mod = x.subtract(Duration(minutes: x.minute - 45));
      return clock.indexOf('${mod.hour} : ${mod.minute} Uhr.');
    } else if (x.minute > 30) {
      var mod = x.subtract(Duration(minutes: x.minute - 30));
      return clock.indexOf('${mod.hour} : ${mod.minute} Uhr.');
    } else if (x.minute > 15) {
      var mod = x.subtract(Duration(minutes: x.minute - 15));
      return clock.indexOf('${mod.hour} : ${mod.minute} Uhr.');
    } else if (x.minute > 0) {
      var mod = x.subtract(Duration(minutes: x.minute));
      return clock.indexOf('${mod.hour} : ${mod.minute}0 Uhr.');
    } else {
      return clock.indexOf('${x.hour} : 00 Uhr.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 150,
        decoration: timeCupertinoPickerDecoration,
        child: CupertinoPicker(
          itemExtent: 40,
          selectionOverlay: null,
          scrollController: FixedExtentScrollController(
            initialItem: (isLeft != null && isLeft == true)
                ? _getCurrentTimeIndex(clock)
                : _getCurrentTimeIndex(clock) + 1,
          ),
          onSelectedItemChanged: onSelectedItemChanged,
          children: List.generate(
            48,
            (index) => Center(
              child: RobotoFont(
                text: clock[index],
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
