import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/data/payment_method.dart';
import 'package:organic_market/ui/payment_methods_page/widgets/payment_methods_list_tile.dart';

class PaymentMethodsList extends StatelessWidget {
  final List<PaymentMethod> paymentMethods;

  const PaymentMethodsList({Key? key, required this.paymentMethods})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(top: 45.h, left: 16.w, right: 16.w),
      children: _buildList(),
    );
  }

  List<Widget> _buildList() {
    List<Widget> widgetsList = [];
    for (PaymentMethod paymentMethod in paymentMethods) {
      widgetsList.add(PaymentMethodsListTile(paymentMethod: paymentMethod));
      widgetsList.add(SizedBox(height: 26.h));
    }
    return widgetsList;
  }
}
