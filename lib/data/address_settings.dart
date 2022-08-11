class AddressSettings {
  final String addressType;
  final String address;
  bool isSelected;

  AddressSettings({
    required this.addressType,
    required this.address,
    this.isSelected = false,
  });
}
