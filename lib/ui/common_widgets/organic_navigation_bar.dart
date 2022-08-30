import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:organic_market/bloc/cart_sum_cubit.dart';
import 'package:organic_market/common/app_colors.dart';
import 'package:organic_market/common/app_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/ui/auth_dialog/auth_dialog.dart';
import 'package:organic_market/ui/common_widgets/counter.dart';

class OrganicNavigationBar extends StatefulWidget {
  const OrganicNavigationBar({Key? key}) : super(key: key);

  @override
  State<OrganicNavigationBar> createState() => _OrganicNavigationBarState();
}

class _OrganicNavigationBarState extends State<OrganicNavigationBar> {
  //final int _counter = 3;

  void _onItemTapped(int index) {
    AutoTabsRouter.of(context).setActiveIndex(index);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(237, 234, 234, 1),
            spreadRadius: 5.r,
            blurRadius: 15.r,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(10.r)),
        child: Container(
          color: AppColors.white,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AutoTabsRouter.of(context).activeIndex == 3
                  ? Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          backgroundColor: AppColors.green149202_1,
                          foregroundColor: AppColors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        onPressed: () {
                          showModalBottomSheet(
                            isScrollControlled: true,
                            context: context,
                            builder: (context) =>
                                Wrap(children: [AuthDialog()]),
                          );
                        },
                        child: SizedBox(
                          height: 50.h,
                          width: 1.sw,
                          child: Center(
                            child: Text(
                              "Перейти к оформлению",
                              style: AppStyles.header1,
                            ),
                          ),
                        ),
                      ),
                    )
                  : Center(),
              BottomNavigationBar(
                elevation: 0.0,
                backgroundColor: AppColors.white,
                selectedItemColor: AppColors.green149202_1,
                unselectedItemColor: Color.fromARGB(255, 211, 206, 206),
                selectedLabelStyle: AppStyles.header5,
                unselectedLabelStyle: AppStyles.header5,
                type: BottomNavigationBarType.fixed,
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
                        BlocProvider(
                          create: (context) => CartSumCubit(),
                          child: BlocBuilder<CartSumCubit, CartSumState>(
                            builder: (context, state) {
                              if (state.amount != 0) {
                                return Positioned(
                                  child: Counter(counter: state.amount),
                                  left: 35.w,
                                );
                              }
                              else return Center();
                            },
                          ),
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
              ),
            ],
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
        child: icon,
      ),
      label: label,
    );
  }
}
