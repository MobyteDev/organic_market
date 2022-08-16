import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/common/app_styles.dart';
import 'package:organic_market/data/payment_method.dart';

class PaymentMethodsListTile extends StatelessWidget {
  final PaymentMethod paymentMethod;

  const PaymentMethodsListTile({Key? key, required this.paymentMethod})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.router.pushNamed('/paymentMethod');
      },
      child: Container(
        color: Colors.transparent,
        child: Row(
          children: [
            Image.asset('assets/icons/visa.png'),
            SizedBox(width: 10.w),
            Expanded(
              child: Text(
                '···· ${paymentMethod.number.substring(12, 16)}',
                style: AppStyles.header3,
              ),
            ),
            Image.asset('assets/icons/forward.png'),
          ],
        ),
      ),
    );
  }
}
