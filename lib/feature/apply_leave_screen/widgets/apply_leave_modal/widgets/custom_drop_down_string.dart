import 'package:dropdown_search/dropdown_search.dart';
import 'package:final_capstone/utilities/fonts.dart';
import 'package:final_capstone/utilities/global_constants.dart';
import 'package:final_capstone/utilities/svg_icons.dart';
import 'package:final_capstone/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class CustomDropDownString extends StatelessWidget {
  final String header;
  final GlobalKey<FormState>? formKey;
  final List<String> items;
  final String? choice;
  final String? Function(String?)? validator;
  final Function()? onRemoveChoice;
  final Function(String?)? onChanged;
  final bool? isApplying;
  final Color? fontColor;

  const CustomDropDownString({
    Key? key,
    required this.header,
    this.formKey,
    required this.items,
    required this.choice,
    this.validator,
    required this.onRemoveChoice,
    required this.onChanged,
    this.isApplying,
    this.fontColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Form(
        key: formKey,
        child: DropdownSearch<String>(
          selectedItem: choice,
          enabled: isApplying ?? true,
          items: items,
          validator: validator,
          popupProps: PopupProps.menu(
            menuProps: dropDownStyle,
            itemBuilder: (context, typeOfLeave, isSelected) => Center(
              child: Container(
                margin: globalMargin,
                child: RobotoFont(
                  text: typeOfLeave,
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
            ),
          ),
          dropdownBuilder: (context, typeOfLeave) => RobotoFont(
            text:
                (typeOfLeave != null && choice != null) ? typeOfLeave : header,
            fontWeight: FontWeight.w400,
            fontSize: 14,
            fontColor: fontColor,
          ),
          onChanged: onChanged,
          dropdownDecoratorProps: dropDownUnderline,
          dropdownButtonProps: DropdownButtonProps(
            icon: (choice == null)
                ? downArrow
                : CustomIconButton(
                    onPressed: onRemoveChoice,
                    icon: closeIcon,
                  ),
          ),
        ),
      ),
    );
  }
}
