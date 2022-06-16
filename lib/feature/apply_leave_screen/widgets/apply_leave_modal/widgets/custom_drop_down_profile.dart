import 'package:dropdown_search/dropdown_search.dart';
import 'package:final_capstone/models/profile.dart';
import 'package:final_capstone/utilities/fonts.dart';
import 'package:final_capstone/utilities/global_constants.dart';
import 'package:final_capstone/utilities/svg_icons.dart';
import 'package:final_capstone/widgets/custom_icon_button.dart';
import 'package:final_capstone/widgets/profile_pic.dart';
import 'package:flutter/material.dart';

class CustomDropDownProfile extends StatelessWidget {
  final List<Profile> items;
  final Function() onRemoveChoice;
  final Function(Profile?) onChanged;
  final Profile? choice;
  final bool isApplying;

  const CustomDropDownProfile({
    Key? key,
    required this.items,
    required this.onRemoveChoice,
    required this.onChanged,
    required this.choice,
    required this.isApplying,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: DropdownSearch<Profile>(
        selectedItem: choice,
        enabled: isApplying,
        items: items,
        popupProps: PopupProps.menu(
          menuProps: dropDownStyle,
          itemBuilder: (context, profile, isSelected) => Container(
            padding: globalMargin,
            child: Row(
              children: [
                ProfilePic(
                  profile: profile,
                  size: 45,
                ),
                const SizedBox(width: 15),
                RobotoFont(
                  text: profile.name,
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ],
            ),
          ),
        ),
        dropdownBuilder: (context, profile) =>
            (profile != null && choice != null)
                ? Row(
                    children: [
                      ProfilePic(
                        profile: profile,
                        size: 45,
                      ),
                      const SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RobotoFont(
                            text: profile.name,
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                          const MulishFont(
                            text: 'Vertretung durch',
                            fontWeight: FontWeight.w600,
                            fontSize: 10,
                            fontColor: Colors.grey,
                          ),
                        ],
                      ),
                    ],
                  )
                : const RobotoFont(
                    text: 'Substitute',
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
        onChanged: onChanged,
        dropdownButtonProps: DropdownButtonProps(
          icon: (choice == null)
              ? downArrow
              : CustomIconButton(
                  onPressed: onRemoveChoice,
                  icon: closeIcon,
                ),
        ),
        dropdownDecoratorProps: dropDownUnderline,
      ),
    );
  }
}
