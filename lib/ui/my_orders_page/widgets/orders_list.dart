import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/data/order.dart';
import 'package:organic_market/ui/my_orders_page/widgets/orders_list_tile.dart';

class OrdersList extends StatelessWidget {
  final List<Order> orders;

  OrdersList({Key? key, required this.orders}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 34.h),
      children: _buildList(),
    );
  }

  List<Widget> _buildList() {
    List<Widget> widgetsList = [];
    for (Order order in orders) {
      widgetsList.add(OrdersListTile(order: order));
      widgetsList.add(SizedBox(height: 26.h));
    }
    return widgetsList;
  }
}
