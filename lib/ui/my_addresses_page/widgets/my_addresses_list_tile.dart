import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:organic_market/common/app_styles.dart';
import 'package:organic_market/data/address.dart';

class MyAddressesListTile extends StatelessWidget {
  final Address address;

  const MyAddressesListTile({Key? key, required this.address})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.router.pushNamed('/address');
      },
      child: Container(
        color: Colors
            .transparent, // Чтобы строка реагировала на нажатие в любом месте
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    address.name ?? 'Без названия',
                    style: AppStyles.bodyGrey7,
                  ),
                  Text(
                    address.address,
                    style: AppStyles.header5,
                  ),
                ],
              ),
            ),
            Image.asset('assets/icons/forward.png'),
          ],
        ),
      ),
    );
  }
}
