class Product {
  const Product(this.name, this.weight, this.price, this.image, {this.count});

  final String name;
  final double weight;
  final int price;
  final String image;
  final int? count; // Пока что так, потом надо подумать над этим
}
