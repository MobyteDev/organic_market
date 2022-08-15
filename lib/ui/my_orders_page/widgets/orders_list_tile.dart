import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/common/app_colors.dart';
import 'package:organic_market/common/app_styles.dart';
import 'package:organic_market/data/order.dart';

class OrdersListTile extends StatelessWidget {
  final Order order;

  const OrdersListTile({Key? key, required this.order}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        order.isDelivered
            ? Container(
                height: 42.h,
                width: 42.w,
                decoration: BoxDecoration(
                  color: AppColors.blue55115231_0_1,
                  borderRadius: BorderRadius.all(Radius.circular(25.r)),
                ),
                child: Image.asset(
                  'assets/icons/green_car.png',
                  color: AppColors.blue55115231_1,
                ),
              )
            : Container(
                height: 42.h,
                width: 42.w,
                decoration: BoxDecoration(
                  color: AppColors.green1492020_0_1,
                  borderRadius: BorderRadius.all(Radius.circular(25.r)),
                ),
                child: Image.asset(
                  'assets/icons/check.png',
                  color: AppColors.blue55115231_1,
                ),
              ),
        SizedBox(width: 12.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(order.date, style: AppStyles.bodyGrey7),
              Text(
                '${order.goodsNumber} ${_getDeclination(order.goodsNumber)} на сумму ${order.price} ₽',
                style: AppStyles.header5,
              ),
            ],
          ),
        ),
        Image.asset('assets/icons/forward.png'),
      ],
    );
  }

  String _getDeclination(int number) {
    if (number % 100 >= 11 && number % 100 <= 14) {
      return 'товаров';
    } else if (number % 10 == 1) {
      return 'товар';
    } else if (number % 10 >= 2 && number % 10 <= 4) {
      return 'товара';
    } else {
      return 'товаров';
    }
  }
}
