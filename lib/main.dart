import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/common/app_colors.dart';
import 'package:organic_market/common/app_styles.dart';
import 'package:organic_market/ui/main_screen/main_screen.dart';
import 'package:organic_market/ui/order_making_page/order_making_page.dart';
import 'package:organic_market/ui/product_page/product_page.dart';
import 'package:organic_market/ui/profile_page/profile_page.dart';

import 'package:organic_market/utils/app_router.gr.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final appRouter = AutoRouter();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, __) {
        return MaterialApp.router(
          title: 'Flutter Demo',
          theme: ThemeData(
            appBarTheme: AppBarTheme(
              centerTitle: true,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
              ),
              backgroundColor: AppColors.white,
              titleTextStyle: AppStyles.header6,
            ),
            // fontFamily: "Jost",
            primarySwatch: Colors.blue,
          ),
          routerDelegate: appRouter.delegate(),
          routeInformationParser: appRouter.defaultRouteParser(),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
