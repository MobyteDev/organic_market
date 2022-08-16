import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/data/payment_method.dart';
import 'package:organic_market/ui/common_widgets/organic_app_bar.dart';
import 'package:organic_market/ui/common_widgets/organic_bottom.dart';
import 'package:organic_market/ui/payment_methods_page/widgets/payment_methods_list.dart';

class PaymentMethodsPage extends StatefulWidget {
  PaymentMethodsPage({Key? key}) : super(key: key);

  @override
  State<PaymentMethodsPage> createState() => _PaymentMethodsPageState();
}

class _PaymentMethodsPageState extends State<PaymentMethodsPage> {
  final List<PaymentMethod> _paymentMethods = [
    PaymentMethod(
      name: 'SERGEY PETROV',
      number: '1234567890123456',
      date: '02/30',
      cvv: '123',
    ),
    PaymentMethod(
      name: 'SERGEY PETROV',
      number: '1234567890123456',
      date: '02/30',
      cvv: '123',
    ),
  ];

  void _onTapAdd() {
    context.router.pushNamed('/paymentMethod');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OrganicAppBar(
        title: 'Способы оплаты',
        isBack: true,
      ),
      bottomNavigationBar: OrganicBottom(
        buttonLabel: 'Добавить карту',
        buttonHeight: 58.h,
        buttonWidth: 343.w,
        height: 90.h,
        onTap: _onTapAdd,
      ),
      body: PaymentMethodsList(paymentMethods: _paymentMethods),
    );
  }
}
