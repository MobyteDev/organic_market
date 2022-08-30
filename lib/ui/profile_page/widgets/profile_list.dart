import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:organic_market/bloc/profile_page_cubit.dart';
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
            //context.router.pushNamed('/personalData');
            //Чтобы NavigationBar оставался на экране
            BlocProvider.of<ProfilePageCubit>(context).showPersonalDataPage();
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
