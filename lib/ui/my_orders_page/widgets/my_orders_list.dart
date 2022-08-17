import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/data/order.dart';
import 'package:organic_market/ui/common_widgets/organic_list_tile.dart';
import 'package:organic_market/ui/my_orders_page/widgets/order_icon.dart';
import 'package:organic_market/utils/formatting.dart';

class MyOrdersList extends StatelessWidget {
  final List<Order> orders;

  MyOrdersList({Key? key, required this.orders}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 34.h),
      children: _buildList(context),
    );
  }

  List<Widget> _buildList(BuildContext context) {
    List<Widget> widgetsList = [];
    for (Order order in orders) {
      String title =
          '${order.productsNumber} ${Formatting.getProductDeclination(order.productsNumber)} '
          'на сумму ${Formatting.getFormattedPrice(order.price)} ₽';
      widgetsList.add(
        OrganicListTile(
          onTap: () {
            context.router.pushNamed('/order');
          },
          title: title,
          subtitle: order.date,
          icon: OrderIcon(isDelivered: order.isDelivered),
        ),
      );
    }
    return widgetsList;
  }
}
