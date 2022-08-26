import 'package:flutter/material.dart';
import 'package:organic_market/common/app_colors.dart';

class StrikeThroughPainter extends CustomPainter {
  const StrikeThroughPainter({required this.fontSize});

  final double fontSize;
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..strokeWidth = 1.5 * fontSize / 14
      ..color = AppColors.pink5589_1
      ..style = PaintingStyle.fill;
    canvas.drawLine(Offset(0, size.height - fontSize/2.4), Offset(size.width, fontSize/2.5), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;

}
