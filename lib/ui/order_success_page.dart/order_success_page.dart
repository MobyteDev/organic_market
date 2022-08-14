import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/common/app_colors.dart';
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
            const SizedBox(height: 10),
            Text(
              'Номер заказа: $_orderNumber',
              style: AppStyles.bodyGrey1,
            ),
            const SizedBox(height: 5),
            Text(
              '$_goodsNumber товара на сумму $_price ₽',
              style: AppStyles.bodyGrey1,
            ),
            const SizedBox(height: 10),
            Text(
              'Открыть детали заказа',
              style: AppStyles.bodyGreen1,
            ),
            const SizedBox(height: 25),
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
