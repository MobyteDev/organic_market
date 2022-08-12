import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/common/app_styles.dart';

class Brand extends StatelessWidget {
  final String brandTitle;
  const Brand({
    required this.brandTitle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64.h,
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
      ),
      child: InkWell(
        onTap: () {
          //TODO:
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Бренд "$brandTitle"',
              style: AppStyles.body7,
            ),
            Image.asset(
              "assets/icons/nextArrow.png",
            ),
          ],
        ),
      ),
    );
  }
}
