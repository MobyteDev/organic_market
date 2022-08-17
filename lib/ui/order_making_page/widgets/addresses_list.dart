import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/common/app_colors.dart';
import 'package:organic_market/common/app_styles.dart';
import 'package:organic_market/data/address.dart';
import 'package:organic_market/ui/order_making_page/widgets/addresses_list_tile.dart';

class AddressesList extends StatefulWidget {
  final List<Address> addresses;

  const AddressesList({Key? key, required this.addresses}) : super(key: key);

  @override
  State<AddressesList> createState() => _AddressesListState();
}

class _AddressesListState extends State<AddressesList> {
  late final List<Address> _addresses;

  @override
  void initState() {
    _addresses = widget.addresses;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 15.h,
        left: 16.w,
        right: 16.w,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.h)),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: _buildHandle()),
          SizedBox(height: 24.h),
          const Text(
            'Ваши адреса',
            style: AppStyles.header7,
          ),
          SizedBox(height: 16.h),
          ..._buildList(),
          Row(
            children: [
              Image.asset('assets/icons/add.png'),
              SizedBox(width: 5.w),
              Text(
                'Добавить адрес',
                style: AppStyles.bodyGreen3,
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
    for (Address address in _addresses) {
      addressesList.add(
        GestureDetector(
          onTap: () {
            setState(
              () {
                address.isSelected = !address.isSelected;
                for (Address address2 in _addresses) {
                  if (address2 != address) {
                    address2.isSelected = false;
                  }
                }
              },
            );
          },
          child: AddressesListTile(address: address),
        ),
      );
    }
    return addressesList;
  }
}
