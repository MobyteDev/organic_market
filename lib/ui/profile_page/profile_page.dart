import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/common/app_styles.dart';
import 'package:organic_market/ui/common_widgets/organic_app_bar.dart';
import 'package:organic_market/ui/profile_page/widgets/bonus_points.dart';
import 'package:organic_market/ui/profile_page/widgets/profile_list.dart';
import 'package:organic_market/utils/formatting.dart';

class ProfilePage extends StatelessWidget {
  final String _name = 'Сергей';
  final String _phone = Formatting.getFormattedNumber('+71234567890');
  final int _points = 250;
  final int _level = 2;

  ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OrganicAppBar(title: 'Профиль'),
      body: Padding(
        padding: EdgeInsets.only(
          top: 32.h,
          left: 16.w,
          right: 16.w,
          bottom: 21.h,
        ),
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(_name, style: AppStyles.header4),
                  SizedBox(height: 3.h),
                  Text(_phone, style: AppStyles.bodyGrey4),
                  SizedBox(height: 18.h),
                  BonusPoints(level: _level, points: _points),
                  SizedBox(height: 20.h),
                  ProfileList(),
                  Spacer(),
                  Row(
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
