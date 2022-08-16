import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/data/address.dart';
import 'package:organic_market/ui/common_widgets/organic_app_bar.dart';
import 'package:organic_market/ui/common_widgets/organic_bottom.dart';
import 'package:organic_market/ui/my_addresses_page/widgets/my_addresses_list.dart';

class MyAddressesPage extends StatefulWidget {
  const MyAddressesPage({Key? key}) : super(key: key);

  @override
  State<MyAddressesPage> createState() => _MyAddressesPageState();
}

class _MyAddressesPageState extends State<MyAddressesPage> {
  final List<Address> _addresses = [
    Address(
      type: 'Доставка',
      name: 'Дом',
      address: 'ул. Маршала Бирюзова, д. 19',
    ),
    Address(
      type: 'Доставка',
      name: 'Дом',
      address: 'ул. Маршала Бирюзова, д. 19',
    ),
  ];

  void _onTapAdd() {
    context.router.pushNamed('/address');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OrganicAppBar(title: 'Мои адреса', isBack: true),
      bottomNavigationBar: OrganicBottom(
        buttonHeight: 58.h,
        buttonWidth: 343.w,
        buttonLabel: 'Добавить адрес',
        height: 90.h,
        onTap: _onTapAdd,
      ),
      body: MyAddressesList(addresses: _addresses),
    );
  }
}
