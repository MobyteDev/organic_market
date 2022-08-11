import 'package:flutter/material.dart';
import 'package:organic_market/common/models/address_settings.dart';
import 'package:organic_market/ui/order_making_page/addresses_list_tile.dart';

class AddressesList extends StatefulWidget {
  final List<AddressSettings> addressSetingsList;

  const AddressesList({Key? key, required this.addressSetingsList})
      : super(key: key);

  @override
  State<AddressesList> createState() => _AddressesListState();
}

class _AddressesListState extends State<AddressesList> {
  late final List<AddressSettings> _addressSetingsList;

  @override
  void initState() {
    _addressSetingsList = widget.addressSetingsList;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 15,
        left: 20,
        right: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: _buildHandle()),
          const SizedBox(height: 30),
          const Text(
            'Ваши адреса',
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          ..._buildList(),
          const SizedBox(height: 5),
          Row(
            children: [
              Icon(
                Icons.add,
                color: Colors.lightGreenAccent[700],
              ),
              const SizedBox(width: 5),
              Text(
                'Добавить адрес',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.lightGreenAccent[700],
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildHandle() {
    return FractionallySizedBox(
      widthFactor: 0.11,
      child: Container(
        height: 5,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: const BorderRadius.all(Radius.circular(2.5)),
        ),
      ),
    );
  }

  List<Widget> _buildList() {
    List<Widget> addressesList = [];
    for (AddressSettings addressSetings in _addressSetingsList) {
      addressesList.add(
        GestureDetector(
          onTap: () {
            setState(() {
              addressSetings.isSelected = !addressSetings.isSelected;
              for (AddressSettings addressSetings2 in _addressSetingsList) {
                if (addressSetings2 != addressSetings) {
                  addressSetings2.isSelected = false;
                }
              }
            });
          },
          child: AddressesListTile(addressSettings: addressSetings),
        ),
      );
    }
    return addressesList;
  }
}
