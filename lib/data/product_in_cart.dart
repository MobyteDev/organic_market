class ProductInCart {
  const ProductInCart({required this.title,  required this.image, required this.default_price, required this.discounts});

  final String title;
  final String image;
  final int default_price;
  final List<int> discounts;
}