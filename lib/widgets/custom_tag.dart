import 'package:final_capstone/utilities/fonts.dart';
import 'package:flutter/material.dart';

class CustomTag extends StatelessWidget {
  final String text;
  final double? height;

  const CustomTag({
    Key? key,
    required this.text,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 5,
          height: height ?? 30,
          color: const Color(0xFF8465FF),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          height: height ?? 30,
          color: Colors.black,
          child: Center(
            child: RobotoFont(
              text: text,
              fontWeight: FontWeight.w400,
              fontSize: 12,
              fontColor: Colors.white,
            ),
          ),
        ),
        SizedBox(
          width: height ?? 30,
          height: height ?? 30,
          child: CustomPaint(
            painter: CustomTriangle(color: Colors.black),
          ),
        ),
      ],
    );
  }
}

class CustomTriangle extends CustomPainter {
  final Color color;

  CustomTriangle({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    var path = Path();
    paint.color = color;
    path.lineTo(0, size.width);
    path.lineTo(15, size.width);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
