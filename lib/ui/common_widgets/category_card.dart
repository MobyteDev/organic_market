import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/common/app_colors.dart';
import 'package:organic_market/common/app_styles.dart';
import 'package:organic_market/data/product_category.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    required this.category,
    required this.onTap,
    required this.width,
    this.small = true,
  });

  final ProductCategory category;
  final double width;
  final VoidCallback onTap;
  final bool small;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: small ? EdgeInsets.all(10.0.w) : EdgeInsets.only(left: 10.0.w, right: 10.0.w, bottom: 14.0.w),
        width: width,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: AppColors.grey242243240_1,
              spreadRadius: 5,
              blurRadius: 10,
              offset: Offset(0, 5),
              //blurStyle: BlurStyle.outer,
            ),
          ],
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Image.asset(category.image, fit: BoxFit.fitWidth, height: 120.h),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: SizedBox(
                width: 100.w,
                child: Text(
                  category.title,
                  style: small
                      ? AppStyles.body2.copyWith(height: 1)
                      : AppStyles.body1.copyWith(height: 1),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
