import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:organic_market/common/app_colors.dart';
import 'package:organic_market/common/app_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/ui/common_widgets/counter.dart';

class OrganicNavigationBar extends StatefulWidget {
  const OrganicNavigationBar({Key? key}) : super(key: key);

  @override
  State<OrganicNavigationBar> createState() => _OrganicNavigationBarState();
}

class _OrganicNavigationBarState extends State<OrganicNavigationBar> {
  final int _counter = 3;

  void _onItemTapped(int index) {
    AutoTabsRouter.of(context).setActiveIndex(index);
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
      // currentIndex: _selectedIndex,
      currentIndex: AutoTabsRouter.of(context).activeIndex,
      onTap: _onItemTapped,
      items: [
        _buildBottomNavigationBarItem(
          icon: AutoTabsRouter.of(context).activeIndex == 0
              ? Image.asset('assets/icons/main_green.png')
              : Image.asset('assets/icons/main.png'),
          label: 'Главная',
        ),
        _buildBottomNavigationBarItem(
          icon: Image.asset(
            'assets/icons/catalog.png',
            color: AutoTabsRouter.of(context).activeIndex == 1
                ? AppColors.green149202_1
                : null,
          ),
          label: 'Каталог',
        ),
        _buildBottomNavigationBarItem(
          icon: Image.asset(
            'assets/icons/search.png',
            color: AutoTabsRouter.of(context).activeIndex == 2
                ? AppColors.green149202_1
                : null,
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
                  color: AutoTabsRouter.of(context).activeIndex == 3
                      ? AppColors.green149202_1
                      : null,
                ),
              ),
              Positioned(
                child: Counter(counter: _counter),
                left: 35.w,
              )
            ],
          ),
          label: 'Корзина',
        ),
        _buildBottomNavigationBarItem(
          icon: Image.asset(
            'assets/icons/profile.png',
            color: AutoTabsRouter.of(context).activeIndex == 4
                ? AppColors.green149202_1
                : null,
          ),
          label: 'Профиль',
        ),
      ],
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
