import 'package:flutter/material.dart';
import 'package:organic_market/common/app_colors.dart';
import 'package:organic_market/common/app_styles.dart';

class OrderMakingListTile extends StatelessWidget {
  final String title;
  final String subtitle;

  const OrderMakingListTile({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.grey242243240_1,
      padding: const EdgeInsets.all(15),
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
                const SizedBox(height: 3),
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
    );
  }
}
