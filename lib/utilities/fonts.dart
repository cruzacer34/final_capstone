import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RobotoFont extends StatelessWidget {
  final String text;
  final FontWeight fontWeight;
  final double fontSize;
  final Color? fontColor;

  const RobotoFont({
    Key? key,
    required this.text,
    required this.fontWeight,
    required this.fontSize,
    this.fontColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Roboto',
        fontWeight: fontWeight,
        fontSize: fontSize,
        color: fontColor,
      ),
    );
  }
}

class MulishFont extends StatelessWidget {
  final String text;
  final FontWeight fontWeight;
  final double fontSize;
  final Color? fontColor;

  const MulishFont({
    Key? key,
    required this.text,
    required this.fontWeight,
    required this.fontSize,
    this.fontColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Mulish',
        fontWeight: fontWeight,
        fontSize: fontSize,
        color: fontColor,
      ),
    );
  }
}

class AllertaFont extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color? fontColor;

  const AllertaFont({
    Key? key,
    required this.text,
    required this.fontSize,
    this.fontColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontFamily: 'Allerta',
        fontSize: fontSize,
        color: fontColor,
      ),
    );
  }
}