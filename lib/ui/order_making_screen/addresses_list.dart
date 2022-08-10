import 'package:flutter/material.dart';
import 'package:organic_market/common/models/address_settings.dart';
import 'package:organic_market/ui/order_making_screen/addresses_list_tile.dart';

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
        top: 40,
        left: 20,
        right: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Ваши адреса',
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 15),
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
