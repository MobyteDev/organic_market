class Address {
  final String type; // Доставка или самовывоз
  final String? name; // Название адреса, если это доставка
  final String address; // Улица, дом
  final String? flat;
  final String? entrance;
  final String? floor;
  final String? additionally; // Доп. информация
  bool isSelected; // Используется при выборе адреса

  Address({
    required this.type,
    this.name,
    required this.address,
    this.flat,
    this.entrance,
    this.floor,
    this.additionally,
    this.isSelected = false,
  });
}
