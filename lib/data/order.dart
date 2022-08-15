import 'package:organic_market/data/product.dart';

class Order {
  final int number;
  final String date;
  final int productsNumber;
  final int price;
  final bool isDelivered;
  final List<Product> products;
  final int deliveryPrice;

  Order({
    required this.number,
    required this.date,
    required this.productsNumber,
    required this.price,
    this.isDelivered = true,
    required this.products,
    this.deliveryPrice = 0, 
  });
}
