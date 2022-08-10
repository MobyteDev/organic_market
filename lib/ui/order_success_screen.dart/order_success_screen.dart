import 'package:flutter/material.dart';
import 'package:organic_market/ui/common_widgets/custom_button.dart';

class OrderSuccessScreen extends StatelessWidget {
  final int _orderNumber = 934679;
  final _goodsNumber = 3;
  final int _price = 1850;

  const OrderSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Корзина',
          style: TextStyle(
            color: Colors.black,
            fontSize: 17,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Заказ успешно оформлен',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 15),
            Text(
              'Номер заказа $_orderNumber',
              style: TextStyle(
                fontSize: 17,
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(height: 5),
            Text(
              '$_goodsNumber товара на сумму $_price ₽',
              style: TextStyle(
                fontSize: 17,
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(height: 15),
            Text(
              'Открыть детали заказа',
              style: TextStyle(
                fontSize: 17,
                color: Colors.lightGreenAccent[700],
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            CustomButton(
              buttonLabel: 'Продолжить покупки',
              onTap: () {},
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 20,
              ),
            )
          ],
        ),
      ),
    );
  }
}
