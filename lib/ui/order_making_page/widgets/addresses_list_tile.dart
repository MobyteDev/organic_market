import 'package:flutter/material.dart';
import 'package:organic_market/common/app_colors.dart';
import 'package:organic_market/data/address_settings.dart';

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
                    color: AppColors.green149202_1,
                  )
                : Container(),
          ],
        ),
        Divider(
          color: AppColors.grey242243240_1,
          height: 20,
          thickness: 1,
        ),
      ],
    );
  }
}
