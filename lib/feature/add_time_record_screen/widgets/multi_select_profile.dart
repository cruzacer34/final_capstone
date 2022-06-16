import 'package:dropdown_search/dropdown_search.dart';
import 'package:final_capstone/models/profile.dart';
import 'package:final_capstone/utilities/fonts.dart';
import 'package:final_capstone/utilities/global_constants.dart';
import 'package:final_capstone/utilities/svg_icons.dart';
import 'package:final_capstone/widgets/custom_circle_button.dart';
import 'package:final_capstone/widgets/custom_icon_button.dart';
import 'package:final_capstone/widgets/profile_pic.dart';
import 'package:flutter/material.dart';

class MultiSelectProfile extends StatefulWidget {
  final List<Profile> items;
  final Function(List<Profile>) onChanged;
  final List<Profile> choices;

  const MultiSelectProfile({
    Key? key,
    required this.items,
    required this.onChanged,
    required this.choices,
  }) : super(key: key);

  @override
  State<MultiSelectProfile> createState() => _MultiSelectProfileState();
}

class _MultiSelectProfileState extends State<MultiSelectProfile> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: DropdownSearch<Profile>.multiSelection(
        items: widget.items,
        popupProps: PopupPropsMultiSelection<Profile>.menu(
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
        dropdownBuilder: (context, selectedProfiles) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AllertaFont(
              text: 'Mitarbeiter',
              fontSize: 22,
            ),
            (selectedProfiles.isNotEmpty && widget.choices.isNotEmpty)
                ? Wrap(
                    spacing: 5,
                    runSpacing: 5,
                    children: selectedProfiles
                        .map(
                          (profile) => IntrinsicWidth(
                            child: Container(
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                                color: Colors.black,
                              ),
                              padding: globalMargin,
                              child: Row(
                                children: [
                                  RobotoFont(
                                    text: profile.name,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    fontColor: Colors.white,
                                  ),
                                  const SizedBox(width: 15),
                                  CustomIconButton(
                                    icon: closeWhiteIcon,
                                    onPressed: () => setState(() {
                                      widget.choices.remove(profile);
                                      selectedProfiles.remove(profile);
                                    }),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  )
                : const RobotoFont(
                    text: 'hinzufügen oder bearbeiten',
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    fontColor: Colors.grey,
                  ),
          ],
        ),
        onChanged: widget.onChanged,
        dropdownButtonProps: DropdownButtonProps(
          padding: EdgeInsets.zero,
          icon: CustomCircleButton(
            icon: addWhiteIcon,
            onPressed: null,
            color: Colors.black,
          ),
        ),
        dropdownDecoratorProps: multiSelectProfileDecoration,
      ),
    );
  }
}
