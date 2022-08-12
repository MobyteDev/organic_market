import 'package:flutter/material.dart';
import 'package:organic_market/common/app_colors.dart';

class PriceRow extends StatelessWidget {
  final String title;
  final double titleSize;
  final Color titleColor;
  final FontWeight titleWeight;
  final String value;
  final double valueSize;
  final Color valueColor;
  final FontWeight valueWeight;

  const PriceRow({
    Key? key,
    required this.title,
    required this.value,
    this.titleSize = 18,
    this.valueSize = 18,
    this.titleColor = AppColors.black,
    this.valueColor = AppColors.black,
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
              fontFamily: 'Jost',
              fontSize: titleSize,
              color: titleColor,
              fontWeight: titleWeight,
            ),
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontFamily: 'Jost',
            fontSize: valueSize,
            color: valueColor,
            fontWeight: valueWeight,
          ),
        ),
      ],
    );
  }
}
