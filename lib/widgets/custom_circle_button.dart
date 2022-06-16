import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomCircleButton extends StatelessWidget {
  final Widget icon;
  final Function()? onPressed;
  final Color color;
  final Color? innerColor;
  final double? radius;

  const CustomCircleButton({
    Key? key,
    required this.icon,
    required this.onPressed,
    required this.color,
    this.innerColor,
    this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      minSize: 0,
      onPressed: onPressed,
      child: CircleAvatar(
        radius: radius,
        backgroundColor: color,
        child: CircleAvatar(
          radius: 18,
          backgroundColor: (innerColor == null) ? color : innerColor,
          child: icon,
          ),
        ),
      );
  }
}
