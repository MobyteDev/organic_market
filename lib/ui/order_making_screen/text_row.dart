import 'package:flutter/material.dart';

class TextRow extends StatelessWidget {
  final String title;
  final double titleSize;
  final Color titleColor;
  final FontWeight titleWeight;
  final String value;
  final double valueSize;
  final Color valueColor;
  final FontWeight valueWeight;

  const TextRow({
    Key? key,
    required this.title,
    required this.value,
    this.titleSize = 18,
    this.valueSize = 19,
    this.titleColor = Colors.black,
    this.valueColor = Colors.black,
    this.titleWeight = FontWeight.normal,
    this.valueWeight = FontWeight.normal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            title,
            style: TextStyle(
              fontSize: titleSize,
              color: titleColor,
              fontWeight: titleWeight,
            ),
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: valueSize,
            color: valueColor,
            fontWeight: valueWeight,
          ),
        ),
      ],
    );
  }
}
