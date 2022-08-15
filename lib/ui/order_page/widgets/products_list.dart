import 'package:flutter/material.dart';
import 'package:organic_market/data/product.dart';
import 'package:organic_market/ui/order_page/widgets/products_list_tile.dart';

class ProductsList extends StatelessWidget {
  final List<Product> products;

  const ProductsList({Key? key, required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _buildList(),
    );
  }

  List<Widget> _buildList() {
    List<Widget> widgetsList = [];
    for (Product product in products) {
      widgetsList.add(ProductsListTile(product: product));
    }
    return widgetsList;
  }
}
