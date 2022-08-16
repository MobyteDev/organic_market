import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/common/app_colors.dart';
import 'package:organic_market/common/app_styles.dart';
import 'package:organic_market/data/order.dart';
import 'package:organic_market/utils/formatting.dart';

class OrdersListTile extends StatelessWidget {
  final Order order;

  const OrdersListTile({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.router.pushNamed('/order');
      },
      child: Container(
        color: Colors
            .transparent, // Чтобы строка реагировала на нажатие в любом месте
        child: Row(
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
                    child: Image.asset('assets/icons/check_rounded.png'),
                  ),
            SizedBox(width: 12.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(order.date, style: AppStyles.bodyGrey7),
                  Text(
                    '${order.productsNumber} ${Formatting.getProductDeclination(order.productsNumber)} '
                    'на сумму ${Formatting.getFormattedPrice(order.price)} ₽',
                    style: AppStyles.header5,
                  ),
                ],
              ),
            ),
            Image.asset('assets/icons/forward.png'),
          ],
        ),
      ),
    );
  }
}
