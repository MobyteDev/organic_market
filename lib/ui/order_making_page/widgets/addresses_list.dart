import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/common/app_colors.dart';
import 'package:organic_market/data/address_settings.dart';
import 'package:organic_market/ui/order_making_page/widgets/addresses_list_tile.dart';

class AddressesList extends StatefulWidget {
  final List<AddressSettings> addressSetingsList;

  const AddressesList({Key? key, required this.addressSetingsList})
      : super(key: key);

  @override
  State<AddressesList> createState() => _AddressesListState();
}

class _AddressesListState extends State<AddressesList> {
  late final List<AddressSettings> _addressSetingsList;

  @override
  void initState() {
    _addressSetingsList = widget.addressSetingsList;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 15.h,
        left: 20.w,
        right: 20.w,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.h)),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: _buildHandle()),
          SizedBox(height: 30.h),
          const Text(
            'Ваши адреса',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20.h),
          ..._buildList(),
          SizedBox(height: 5.h),
          Row(
            children: [
              Image.asset('assets/icons/add.png'),
              SizedBox(width: 5.w),
              Text(
                'Добавить адрес',
                style: TextStyle(
                  fontSize: 16,
                  color: AppColors.green149202_1,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildHandle() {
    return FractionallySizedBox(
      widthFactor: 0.11,
      child: Container(
        height: 5.h,
        decoration: BoxDecoration(
          color: AppColors.grey242243240_1,
          borderRadius: BorderRadius.all(Radius.circular(2.5.r)),
        ),
      ),
    );
  }

  List<Widget> _buildList() {
    List<Widget> addressesList = [];
    for (AddressSettings addressSetings in _addressSetingsList) {
      addressesList.add(
        GestureDetector(
          onTap: () {
            setState(() {
              addressSetings.isSelected = !addressSetings.isSelected;
              for (AddressSettings addressSetings2 in _addressSetingsList) {
                if (addressSetings2 != addressSetings) {
                  addressSetings2.isSelected = false;
                }
              }
            });
          },
          child: AddressesListTile(addressSettings: addressSetings),
        ),
      );
    }
    return addressesList;
  }
}
