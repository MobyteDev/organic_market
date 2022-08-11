import 'package:flutter/material.dart';
import 'package:organic_market/common/app_colors.dart';
import 'package:organic_market/common/app_styles.dart';
import 'package:organic_market/ui/common_widgets/custom_button.dart';

class OrderSuccessPage extends StatelessWidget {
  final int _orderNumber = 934679;
  final _goodsNumber = 3;
  final int _price = 1850;

  const OrderSuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Корзина',
          style: TextStyle(
            fontFamily: 'Jost',
            color: AppColors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
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
            CustomButton(
              buttonLabel: 'Продолжить покупки',
              onTap: () {},
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 15,
              ),
            )
          ],
        ),
      ),
    );
  }
}
