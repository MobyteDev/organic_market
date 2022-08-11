import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/common/app_colors.dart';

class ProductDelivery extends StatelessWidget {
  final String deliveryTerm;
  const ProductDelivery({
    super.key,
    required this.deliveryTerm,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          "assets/icons/green_car.png",
        ),
        SizedBox(
          width: 9.h,
        ),
        Text(
          'Ближайшая дата доставки: $deliveryTerm',
          style: const TextStyle(
            color: AppColors.green149202_1,
          ),
        ),
      ],
    );
  }
}
