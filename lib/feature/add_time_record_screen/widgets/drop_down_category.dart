import 'package:final_capstone/feature/apply_leave_screen/widgets/apply_leave_modal/widgets/custom_drop_down_string.dart';
import 'package:final_capstone/utilities/fonts.dart';
import 'package:flutter/material.dart';

class DropDownCategory extends StatelessWidget {
  final String? choice;
  final String header;
  final List<String> items;
  final Function() onRemoveChoice;
  final Function(String?) onChanged;
  final bool? isSubTime;

  const DropDownCategory({
    Key? key,
    this.choice,
    required this.header,
    required this.items,
    required this.onRemoveChoice,
    required this.onChanged,
    this.isSubTime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AllertaFont(
          text: header,
          fontSize: 22,
        ),
        const SizedBox(height: 15),
        CustomDropDownString(
          isApplying: (isSubTime != null) ? false : true,
          header: 'Wahlen Sie bitte Kategorie aus',
          items: items,
          choice: choice,
          onRemoveChoice: onRemoveChoice,
          onChanged: onChanged,
          fontColor: (choice != null) ? Colors.black : Colors.grey,
        ),
      ],
    );
  }
}
