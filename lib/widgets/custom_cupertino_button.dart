import 'package:flutter/cupertino.dart';
import 'package:final_capstone/utilities/fonts.dart';

class CustomCupertinoButton extends StatelessWidget {
  final String text;
  final Widget? icon;
  final Function()? onPressed;

  const CustomCupertinoButton({
    Key? key,
    required this.text,
    this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: CupertinoButton(
        color: CupertinoColors.black,
        borderRadius: BorderRadius.zero,
        padding: const EdgeInsets.symmetric(horizontal: 15),
        onPressed: onPressed,
        child: Row(
          children: [
            RobotoFont(
              text: text,
              fontWeight: FontWeight.w500,
              fontSize: 14,
              fontColor: CupertinoColors.white,
            ),
            const SizedBox(width: 15),
            if(icon != null)
              icon!,
          ],
        ),
      ),
    );
  }
}
