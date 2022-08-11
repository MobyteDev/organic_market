import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
              style: TextStyle(
                fontFamily: "Jost",
                fontSize: 16,
                fontWeight: FontWeight.w600,
                // letterSpacing: 1,
              ),
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
