import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/common/app_styles.dart';
import 'package:organic_market/ui/common_widgets/organic_app_bar.dart';
import 'package:organic_market/ui/profile_page/widgets/bonus_points.dart';
import 'package:organic_market/ui/profile_page/widgets/profile_list.dart';

class ProfilePage extends StatelessWidget {
  final String _name = 'Сергей';
  final String _phone = '+7 123 456 78 90';
  final int _points = 250;
  final int _level = 2;

  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OrganicAppBar(title: 'Профиль'),
      body: ListView(
        padding: EdgeInsets.only(
          top: 32.h,
          left: 16.w,
          right: 16.w,
          bottom: 21.h,
        ),
        children: [
          Text(_name, style: AppStyles.header4),
          SizedBox(height: 3.h),
          Text(_phone, style: AppStyles.bodyGrey4),
          SizedBox(height: 20.h),
          BonusPoints(level: _level, points: _points),
          SizedBox(height: 20.h),
          ProfileList(),
          Expanded( // Надо исправить ошибку
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  // Для выравнения строки
                  height: 26.h,
                  child: Image.asset('assets/icons/exit.png'),
                ),
                SizedBox(width: 5.w),
                Text('Выйти', style: AppStyles.bodyGrey6),
              ],
            ),
          )
        ],
      ),
    );
  }
}
