import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/common/app_styles.dart';
import 'package:organic_market/data/payment_method.dart';
import 'package:organic_market/ui/common_widgets/organic_list_tile.dart';

class PaymentMethodsList extends StatelessWidget {
  final List<PaymentMethod> paymentMethods;

  const PaymentMethodsList({Key? key, required this.paymentMethods})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(top: 45.h, left: 16.w, right: 16.w),
      children: _buildList(context),
    );
  }

  List<Widget> _buildList(BuildContext context) {
    List<Widget> widgetsList = [];
    for (PaymentMethod paymentMethod in paymentMethods) {
      widgetsList.add(
        OrganicListTile(
          onTap: () {
            context.router.pushNamed('/paymentMethod');
          },
          title: '···· ${paymentMethod.number.substring(12, 16)}',
          titleStyle: AppStyles.header3,
          icon: Image.asset('assets/icons/visa.png'),
        ),
      );
    }
    return widgetsList;
  }
}
