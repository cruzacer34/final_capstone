import 'package:final_capstone/utilities/global_constants.dart';
import 'package:final_capstone/utilities/svg_icons.dart';
import 'package:final_capstone/utilities/fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static const String route = '/';

  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors.white,
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 125),
            Column(
              children: [
                logo,
                const SizedBox(height: 50),
                const RobotoFont(
                  text: 'Flutter FieldPass',
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
                const SizedBox(height: 60),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: CupertinoButton(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              microsoftIcon,
                              const SizedBox(width: 15),
                              const RobotoFont(
                                text: 'Sign in with Microsoft',
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                fontColor: CupertinoColors.black,
                              ),
                              const Spacer(),
                              doubleArrowIcon,
                            ],
                          ),
                        ),
                        const SizedBox(height: 15),
                        greyHorizontalLine,
                      ],
                    ),
                    onPressed: () => Navigator.of(context).pushNamed('/home-screen'),
                  ),
                ),
              ],
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const MulishFont(
                    text: 'Impressum',
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    fontColor: CupertinoColors.black,
                  ),
                ),
                const SizedBox(width: 15),
                TextButton(
                  onPressed: () {},
                  child: const MulishFont(
                    text: 'Datenschutz',
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    fontColor: CupertinoColors.black,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
