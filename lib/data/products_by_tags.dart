import 'package:organic_market/data/product.dart';

class ProductsByTags {
  const ProductsByTags({required this.tags, required this.lists});

  final List<String> tags;
  final List<List<Product>> lists;

  int get count {
    int c = 0;
    lists.forEach((list) {c += list.length;});
    return c;
  }
}