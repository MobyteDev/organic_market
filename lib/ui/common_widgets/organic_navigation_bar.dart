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
          icon: Icon(Icons.favorite_border),
          label: 'Главная',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_border),
          label: 'Каталог',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Поиск',
        ),
        BottomNavigationBarItem(
          icon: Stack(
            children: [
              Icon(Icons.shopping_cart_outlined),
              Container(
                height: 15.h,
                width: 15.w,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: AppColors.red,
                  borderRadius: BorderRadius.all(Radius.circular(10.r)),
                ),
                child: Text(
                  '3',
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          label: 'Корзина',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline_rounded),
          label: 'Профиль',
        ),
      ],
    );
  }
}
