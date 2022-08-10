import 'package:flutter/material.dart';
import 'package:organic_market/common/models/address_settings.dart';

class AddressesListTile extends StatelessWidget {
  final AddressSettings addressSettings;

  const AddressesListTile({
    Key? key,
    required this.addressSettings,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    addressSettings.addressType,
                    style: const TextStyle(
                      fontSize: 17,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    addressSettings.address,
                    style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            addressSettings.isSelected
                ? Icon(
                    Icons.check,
                    color: Colors.lightGreenAccent[700],
                  )
                : Container(),
          ],
        ),
        Divider(
          color: Colors.grey[300],
          height: 20,
          thickness: 1,
        ),
      ],
    );
  }
}
