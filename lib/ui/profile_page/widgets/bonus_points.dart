import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/common/app_colors.dart';
import 'package:organic_market/common/app_styles.dart';

class BonusPoints extends StatelessWidget {
  final int points;
  final int level;

  const BonusPoints({Key? key, required this.points, required this.level})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.h),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.all(Radius.circular(10.r)),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(235, 230, 230, 1),
            blurRadius: 10,
            offset: Offset(0, 10.h),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Бонусные баллы', style: AppStyles.header6),
              Image.asset('assets/icons/help.png')
            ],
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('$points баллов', style: AppStyles.bodyGreen3),
              Text('Уровень $level', style: AppStyles.bodyGrey5),
            ],
          ),
        ],
      ),
    );
  }
}
