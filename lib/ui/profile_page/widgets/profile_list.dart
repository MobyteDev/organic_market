import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:organic_market/ui/personal_data_page/personal_data_page.dart';
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
            //context.router.pushNamed('/profile');
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => PersonalDataPage(),
              ),
            );
          },
        ),
        ProfileListTile(
          title: 'Мои заказы',
          onTap: () {},
        ),
        ProfileListTile(
          title: 'Мои адреса',
          onTap: () {},
        ),
        ProfileListTile(
          title: 'Способы оплаты',
          onTap: () {},
        ),
        ProfileListTile(
          title: 'Связаться с нами',
          onTap: () {},
        ),
      ],
    );
  }
}
