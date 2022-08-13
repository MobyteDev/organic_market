import 'package:flutter/material.dart';
import 'package:organic_market/common/app_colors.dart';

class Price extends StatelessWidget {
  final bool isDiscounted;
  const Price({
    super.key,
    required this.isDiscounted,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: AppColors.grey112232_006,
            offset: Offset(0, -7),
          ),
        ],
      ),
      child: Row(
        children: [
          Column(
            children: [
              RichText(
                text: TextSpan(
                  
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
