import 'package:final_capstone/utilities/fonts.dart';
import 'package:final_capstone/utilities/global_constants.dart';
import 'package:flutter/cupertino.dart';

class DrawerButton extends StatelessWidget {
  final Function()? goTo;
  final int menuIndex;
  final int thisIndex;
  final Widget? selectedIcon;
  final Widget unselectedIcon;
  final String header;

  const DrawerButton({
    Key? key,
    required this.goTo,
    required this.menuIndex,
    required this.thisIndex,
    this.selectedIcon,
    required this.unselectedIcon,
    required this.header,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: (menuIndex == thisIndex) ? null : goTo,
      child: Container(
        decoration: (menuIndex == thisIndex) ? selectedMenuUnderline : null,
        child: Column(
          children: [
            (menuIndex == thisIndex)
                ? selectedIcon!
                : unselectedIcon,
            const SizedBox(height: 20),
            RobotoFont(
              text: header,
              fontWeight: FontWeight.w500,
              fontSize: 14,
              fontColor: (menuIndex == thisIndex)
                  ? CupertinoColors.black
                  : CupertinoColors.systemGrey,
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}