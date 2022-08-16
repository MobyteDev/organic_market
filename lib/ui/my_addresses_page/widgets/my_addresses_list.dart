import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/ui/my_addresses_page/widgets/my_addresses_list_tile.dart';

class MyAddressesList extends StatelessWidget {
  const MyAddressesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(top: 32.h, left: 16.w, right: 16.w),
      children: [
        MyAddressesListTile(),
        SizedBox(height: 26.h),
        MyAddressesListTile(),
      ],
    );
  }
}
