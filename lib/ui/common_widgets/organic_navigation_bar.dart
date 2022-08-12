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
      selectedItemColor: AppColors.green149202_1,
      unselectedItemColor: Color.fromARGB(255, 211, 206, 206),
      selectedLabelStyle: AppStyles.header5,
      unselectedLabelStyle: AppStyles.header5,
      type: BottomNavigationBarType.fixed,
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      items: [
        _buildBottomNavigationBarItem(
          icon: Image.asset(
            _selectedIndex == 0
                ? 'assets/icons/main_green.png'
                : 'assets/icons/main.png',
          ),
          label: 'Главная',
        ),
        _buildBottomNavigationBarItem(
          icon: Image.asset(
            'assets/icons/catalog.png',
            color: _selectedIndex == 1 ? AppColors.green149202_1 : null,
          ),
          label: 'Каталог',
        ),
        _buildBottomNavigationBarItem(
          icon: Image.asset(
            'assets/icons/search.png',
            color: _selectedIndex == 2 ? AppColors.green149202_1 : null,
          ),
          label: 'Поиск',
        ),
        BottomNavigationBarItem(
          icon: Stack(
            children: [
              Container(
                padding: EdgeInsets.only(top: 10.h),
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/icons/cart.png',
                  color: _selectedIndex == 3 ? AppColors.green149202_1 : null,
                ),
              ),
              Positioned(
                child: _buildCounter(),
                left: 35.w,
              )
            ],
          ),
          label: 'Корзина',
        ),
        _buildBottomNavigationBarItem(
          icon: Image.asset(
            'assets/icons/profile.png',
            color: _selectedIndex == 4 ? AppColors.green149202_1 : null,
          ),
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
        borderRadius: BorderRadius.all(Radius.circular(20.r)),
      ),
      child: Container(
        height: 16.h,
        width: 16.w,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColors.pink5589_1,
          borderRadius: BorderRadius.all(Radius.circular(20.r)),
        ),
        child: Text(
          '$_counter',
          style: TextStyle(
            color: AppColors.white,
            fontSize: 11,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }

  BottomNavigationBarItem _buildBottomNavigationBarItem(
      {required icon, required label}) {
    return BottomNavigationBarItem(
      icon: Container(
        padding: EdgeInsets.only(top: 10.h),
        alignment: Alignment.center,
        child: icon,
      ),
      label: label,
    );
  }
}
