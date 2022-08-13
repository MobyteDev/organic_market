import 'package:flutter/material.dart';
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
      body: Padding(
        padding: const EdgeInsets.only(
          top: 32,
          left: 16,
          right: 16,
          bottom: 21,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(_name, style: AppStyles.header4),
            SizedBox(height: 3),
            Text(_phone, style: AppStyles.bodyGrey4),
            SizedBox(height: 20),
            BonusPoints(level: _level, points: _points),
            SizedBox(height: 20),
            ProfileList(),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    // Для выравнения строки
                    height: 26,
                    child: Image.asset('assets/icons/exit.png'),
                  ),
                  SizedBox(width: 5),
                  Text('Выйти', style: AppStyles.bodyGrey6),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
