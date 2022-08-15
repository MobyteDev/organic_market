import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/common/app_styles.dart';
import 'package:organic_market/ui/common_widgets/organic_button.dart';
import 'package:organic_market/ui/common_widgets/organic_app_bar.dart';

class OrderSuccessPage extends StatelessWidget {
  final int _orderNumber = 934679;
  final _goodsNumber = 3;
  final int _price = 1850;

  const OrderSuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OrganicAppBar(title: 'Корзина'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Заказ успешно оформлен',
              style: AppStyles.header4,
            ),
            SizedBox(height: 9.h),
            Text(
              'Номер заказа: $_orderNumber',
              style: AppStyles.bodyGrey1,
            ),
            SizedBox(height: 2.h),
            Text(
              '$_goodsNumber товара на сумму $_price ₽',
              style: AppStyles.bodyGrey1,
            ),
            SizedBox(height: 9.h),
            Text(
              'Открыть детали заказа',
              style: AppStyles.bodyGreen1,
            ),
            SizedBox(height: 24.h),
            OrganicButton(
              buttonLabel: 'Продолжить покупки',
              onTap: () {},
              height: 47.h,
              width: 211.w,
            )
          ],
        ),
      ),
    );
  }
}
