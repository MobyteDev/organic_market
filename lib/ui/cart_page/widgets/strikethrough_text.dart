import 'package:flutter/material.dart';
import 'package:organic_market/ui/cart_page/strikethrough_painter.dart';

class StrikeThroughText extends StatelessWidget {
  const StrikeThroughText({Key? key, required this.text, required this.style}) : super(key: key);

  final String text;
  final TextStyle style;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Text(text, style: style,),
        CustomPaint(
          painter: StrikeThroughPainter(fontSize: style.fontSize ?? 20),
          child: Text(text, style: style.copyWith(color: Colors.transparent),),
        ),
      ],
    );
  }

}