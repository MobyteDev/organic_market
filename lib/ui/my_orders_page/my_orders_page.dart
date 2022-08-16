import 'package:flutter/material.dart';
import 'package:organic_market/data/order.dart';
import 'package:organic_market/ui/common_widgets/organic_app_bar.dart';
import 'package:organic_market/ui/my_orders_page/widgets/orders_list.dart';

class MyOrdersPage extends StatelessWidget {
  final List<Order> orders = [
    Order(
      number: 1,
      date: '11 декабря 2021',
      productsNumber: 2,
      price: 1987,
      products: [],
    ),
    Order(
      number: 2,
      date: '15 июля 2022',
      productsNumber: 3,
      price: 1000,
      isDelivered: false,
      products: [],
    ),
  ];

  MyOrdersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OrganicAppBar(title: 'Мои заказы', isBack: true),
      body: OrdersList(orders: orders),
    );
  }
}
