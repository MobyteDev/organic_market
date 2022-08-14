import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/common/app_colors.dart';
import 'package:organic_market/common/app_styles.dart';

class OrderMakingListTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final void Function() onTap;

  const OrderMakingListTile({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: AppColors.grey242243240_1,
        padding: EdgeInsets.all(15.h),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: AppStyles.bodyGrey2,
                  ),
                  SizedBox(height: 3.h),
                  Text(
                    subtitle,
                    style: AppStyles.header6,
                  ),
                ],
              ),
            ),
            Image.asset('assets/icons/forward.png'),
          ],
        ),
      ),
    );
  }
}
