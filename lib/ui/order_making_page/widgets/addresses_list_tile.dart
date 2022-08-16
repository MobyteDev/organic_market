import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/common/app_colors.dart';
import 'package:organic_market/common/app_styles.dart';
import 'package:organic_market/data/address_settings.dart';

class AddressesListTile extends StatelessWidget {
  final AddressSettings addressSettings;

  const AddressesListTile({
    Key? key,
    required this.addressSettings,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      addressSettings.addressType,
                      style: AppStyles.bodyGrey1,
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      addressSettings.address,
                      style: AppStyles.header3,
                    ),
                  ],
                ),
              ),
              addressSettings.isSelected
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
      ),
    );
  }
}
