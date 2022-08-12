import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/common/app_colors.dart';
import 'package:organic_market/common/app_styles.dart';

class ButtonSection extends StatelessWidget {
  const ButtonSection({Key? key, required this.discounts, required this.favorite, required this.alreadyBought}) : super(key: key);

  final void Function() discounts;
  final void Function() favorite;
  final void Function() alreadyBought;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 160.w,
              height: 50.h,
              child: ElevatedButton(
                onPressed: discounts,
                style: ElevatedButton.styleFrom(
                    foregroundColor: AppColors.black, backgroundColor: AppColors.white),
                child: Center(
                  child: Row(
                    children: [
                      Spacer(),
                      Image.asset("assets/icons/percent.png"),
                      SizedBox(width: 5.w),
                      Text(
                        "Скидки",
                        style: AppStyles.bigBody,
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 160.w,
              height: 50.h,
              child: ElevatedButton(
                onPressed: favorite,
                style: ElevatedButton.styleFrom(
                    foregroundColor: AppColors.black, backgroundColor: AppColors.white),
                child: Center(
                  child: Row(
                    children: [
                      Spacer(),
                      Image.asset("assets/icons/heart.png"),
                      SizedBox(width: 5.w),
                      Text(
                        "Избранное",
                        style: AppStyles.bigBody,
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),

        SizedBox(height: 8.h),

        SizedBox(
          width: double.infinity,
          height: 50.h,
          child: ElevatedButton(
            onPressed: alreadyBought,
            style: ElevatedButton.styleFrom(
                foregroundColor: AppColors.black, backgroundColor: AppColors.white),
            child: Center(
              child: Row(
                children: [
                  Spacer(),
                  Image.asset("assets/icons/shopping_cart.png"),
                  SizedBox(width: 5.w),
                  Text(
                    "Уже покупали",
                    style: AppStyles.bigBody,
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
