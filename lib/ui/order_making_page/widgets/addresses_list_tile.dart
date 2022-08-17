import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/common/app_colors.dart';
import 'package:organic_market/common/app_styles.dart';
import 'package:organic_market/data/address.dart';

class AddressesListTile extends StatelessWidget {
  final Address address;

  const AddressesListTile({
    Key? key,
    required this.address,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    address.type,
                    style: AppStyles.bodyGrey1,
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    address.address,
                    style: AppStyles.header3,
                  ),
                ],
              ),
            ),
            address.isSelected
                ? Image.asset('assets/icons/check.png')
                : Container(),
          ],
        ),
        Divider(
          color: AppColors.grey242243240_1,
          height: 16.h,
          thickness: 1,
        ),
      ],
    );
  }
}
