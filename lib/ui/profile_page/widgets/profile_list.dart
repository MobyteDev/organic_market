import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:organic_market/ui/profile_page/widgets/profile_list_tile.dart';

class ProfileList extends StatelessWidget {
  const ProfileList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileListTile(
          title: 'Личные данные',
          onTap: () {
            context.router.pushNamed('/personalData');
          },
        ),
        ProfileListTile(
          title: 'Мои заказы',
          onTap: () {
            context.router.pushNamed('/myOrders');
          },
        ),
        ProfileListTile(
          title: 'Мои адреса',
          onTap: () {
            context.router.pushNamed('/myAddresses');
          },
        ),
        ProfileListTile(
          title: 'Способы оплаты',
          onTap: () {
            context.router.pushNamed('/paymentMethods');
          },
        ),
        ProfileListTile(
          title: 'Связаться с нами',
          onTap: () {},
        ),
      ],
    );
  }
}
