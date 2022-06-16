import 'package:final_capstone/utilities/global_constants.dart';
import 'package:flutter/cupertino.dart';

class NotesTextField extends StatelessWidget {
  final bool? readOnly;
  final TextEditingController? controller;
  final Function(String) onChanged;

  const NotesTextField({
    Key? key,
    this.readOnly,
    this.controller,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 125,
        child: CupertinoTextField(
          readOnly: readOnly ?? false,
          controller: controller,
          onChanged: onChanged,
          textAlignVertical: TextAlignVertical.top,
          maxLines: 5,
          placeholder: 'Bemerkung hinzufugen',
          placeholderStyle: applyLeaveNotesStyle,
          decoration: applyLeavesNotesBoxDecoration,
        ),
      ),
    );
  }
}
