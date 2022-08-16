import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/data/address.dart';
import 'package:organic_market/ui/my_addresses_page/widgets/my_addresses_list_tile.dart';

class MyAddressesList extends StatelessWidget {
  final List<Address> addresses;

  const MyAddressesList({Key? key, required this.addresses}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(top: 32.h, left: 16.w, right: 16.w),
      children: _buildList(),
    );
  }

  List<Widget> _buildList() {
    List<Widget> widgetsList = [];
    for (Address address in addresses) {
      widgetsList.add(MyAddressesListTile(address: address));
      widgetsList.add(SizedBox(height: 26.h));
    }
    return widgetsList;
  }
}
