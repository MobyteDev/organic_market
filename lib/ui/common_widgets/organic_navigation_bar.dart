import 'package:flutter/material.dart';
import 'package:organic_market/common/app_colors.dart';
import 'package:organic_market/common/app_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrganicNavigationBar extends StatefulWidget {
  const OrganicNavigationBar({Key? key}) : super(key: key);

  @override
  State<OrganicNavigationBar> createState() => _OrganicNavigationBarState();
}

class _OrganicNavigationBarState extends State<OrganicNavigationBar> {
  final int _counter = 3;

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: AppColors.white,
      iconSize: 30.h,
      selectedItemColor: AppColors.green149202_1,
      unselectedItemColor: Color.fromARGB(255, 211, 206, 206),
      selectedLabelStyle: AppStyles.header5,
      unselectedLabelStyle: AppStyles.header5,
      type: BottomNavigationBarType.fixed,
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      items: [
        BottomNavigationBarItem(
          icon: Image.asset('assets/icons/main.png'),
          label: 'Главная',
        ),
        BottomNavigationBarItem(
          icon: Image.asset('assets/icons/catalog.png'),
          label: 'Каталог',
        ),
        BottomNavigationBarItem(
          icon: Image.asset('assets/icons/search.png'),
          label: 'Поиск',
        ),
        BottomNavigationBarItem(
          icon: Stack(
            children: [
              Center(
                child: Image.asset('assets/icons/cart.png'),
              ),
              Row(
                children: [
                  SizedBox(width: 40.w),
                  _buildCounter(),
                ],
              ),
            ],
          ),
          label: 'Корзина',
        ),
        BottomNavigationBarItem(
          icon: Image.asset('assets/icons/profile.png'),
          label: 'Профиль',
        ),
      ],
    );
  }

  Widget _buildCounter() {
    return Container(
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.all(Radius.circular(10.r)),
      ),
      child: Container(
        height: 15.h,
        width: 15.w,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColors.pink5589_1,
          borderRadius: BorderRadius.all(Radius.circular(10.r)),
        ),
        child: Text(
          '$_counter',
          style: TextStyle(
            color: AppColors.white,
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
