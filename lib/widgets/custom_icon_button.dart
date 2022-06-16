import 'package:flutter/cupertino.dart';

class CustomIconButton extends StatelessWidget {
  final Widget icon;
  final Function()? onPressed;

  const CustomIconButton({
    Key? key,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      minSize: 0,
      onPressed: onPressed,
      child: icon,
    );
  }
}
