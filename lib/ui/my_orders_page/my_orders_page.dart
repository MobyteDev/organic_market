import 'package:flutter/material.dart';
import 'package:organic_market/data/order.dart';
import 'package:organic_market/ui/common_widgets/organic_app_bar.dart';
import 'package:organic_market/ui/my_orders_page/widgets/orders_list.dart';

class MyOrdersPage extends StatelessWidget {
  final List<Order> orders = [
    Order(
      date: '11 декабря 2021',
      goodsNumber: 2,
      price: 1987,
    ),
    Order(
      date: '15 июля 2022',
      goodsNumber: 3,
      price: 1000,
      isDelivered: false,
    ),
  ];

  MyOrdersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OrganicAppBar(title: 'Мои заказы'),
      body: OrdersList(orders: orders),
    );
  }
}
