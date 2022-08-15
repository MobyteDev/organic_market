class Order {
  final String date;
  final int goodsNumber;
  final int price;
  final bool isDelivered;

  Order({
    required this.date,
    required this.goodsNumber,
    required this.price,
    this.isDelivered = true,
  });
}
