import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:organic_market/common/app_styles.dart';

class MyAddressesListTile extends StatelessWidget {
  const MyAddressesListTile({Key? key}) : super(key: key);

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
                  Text('Дом', style: AppStyles.bodyGrey7),
                  Text(
                    'ул. Маршала Бирюзова, д. 19',
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
