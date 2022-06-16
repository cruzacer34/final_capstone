import 'package:final_capstone/utilities/fonts.dart';
import 'package:flutter/cupertino.dart';

class BusinessCardCategory extends StatelessWidget {
  final String header;
  final Widget icon;
  final Widget child;

  const BusinessCardCategory({
    Key? key,
    required this.header,
    required this.icon,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RobotoFont(
          text: header,
          fontWeight: FontWeight.w500,
          fontSize: 22,
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 45,
                width: 45,
                child: icon,
              ),
              const SizedBox(width: 25),
              child,
            ],
          ),
        ),
      ],
    );
  }
}
