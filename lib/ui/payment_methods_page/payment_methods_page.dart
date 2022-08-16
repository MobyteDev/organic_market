import 'package:flutter/material.dart';
import 'package:organic_market/data/payment_method.dart';
import 'package:organic_market/ui/common_widgets/organic_app_bar.dart';
import 'package:organic_market/ui/payment_methods_page/widgets/payment_methods_list.dart';

class PaymentMethodsPage extends StatelessWidget {
  final List<PaymentMethod> _paymentMethods = [
    PaymentMethod(number: '1234 5678 9012 3456'),
    PaymentMethod(number: '1234 5678 9012 1234'),
  ];

  PaymentMethodsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OrganicAppBar(
        title: 'Способы оплаты',
        isBack: true,
      ),
      body: PaymentMethodsList(paymentMethods: _paymentMethods),
    );
  }
}
