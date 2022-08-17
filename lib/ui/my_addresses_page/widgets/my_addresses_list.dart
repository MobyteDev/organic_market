import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/data/address.dart';
import 'package:organic_market/ui/common_widgets/organic_list_tile.dart';

class MyAddressesList extends StatelessWidget {
  final List<Address> addresses;

  const MyAddressesList({Key? key, required this.addresses}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(top: 32.h, left: 16.w, right: 16.w),
      children: _buildList(context),
    );
  }

  List<Widget> _buildList(BuildContext context) {
    List<Widget> widgetsList = [];
    for (Address address in addresses) {
      widgetsList.add(
        OrganicListTile(
          onTap: () {
            context.router.pushNamed('/address');
          },
          title: address.address,
          subtitle: address.name ?? 'Без названия',
        ),
      );
    }
    return widgetsList;
  }
}
