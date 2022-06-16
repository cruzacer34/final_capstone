import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomCupertinoNavBar extends StatelessWidget
    implements ObstructingPreferredSizeWidget {
  final Widget? leading;
  final Widget? middle;
  final Widget? trailing;
  final Color? backgroundColor;

  const CustomCupertinoNavBar({
    Key? key,
    this.leading,
    this.middle,
    this.trailing,
    this.backgroundColor,
  })  : preferredSize = const Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  bool shouldFullyObstruct(BuildContext context) => false;

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 125,
        child: CupertinoNavigationBar(
          backgroundColor: backgroundColor,
          border: Border.all(color: Colors.transparent),
          padding: const EdgeInsetsDirectional.only(start: 35, end: 35),
          automaticallyImplyLeading: false,
          automaticallyImplyMiddle: false,
          leading: leading,
          middle: middle,
          trailing: trailing,
        ),
      );
  }
}
