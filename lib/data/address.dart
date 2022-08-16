class Address {
  final String type;
  final String? name;
  final String address;
  final String? flat;
  final String? entrance;
  final String? floor;
  final String? additionally;

  Address({
    required this.type,
    this.name,
    required this.address,
    this.flat,
    this.entrance,
    this.floor,
    this.additionally,
  });
}
