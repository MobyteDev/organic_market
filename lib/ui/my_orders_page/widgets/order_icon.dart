import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/common/app_colors.dart';

class OrderIcon extends StatelessWidget {
  final bool isDelivered;

  const OrderIcon({Key? key, required this.isDelivered}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42.h,
      width: 42.w,
      decoration: BoxDecoration(
        color: isDelivered
            ? AppColors.green1492020_0_1
            : AppColors.blue55115231_0_1,
        borderRadius: BorderRadius.all(Radius.circular(25.r)),
      ),
      child: isDelivered
          ? Image.asset('assets/icons/check_rounded.png')
          : Image.asset(
              'assets/icons/green_car.png',
              color: AppColors.blue55115231_1,
            ),
    );
  }
}
