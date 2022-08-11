import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/common/app_colors.dart';
import 'package:organic_market/ui/main_screen/main_screen.dart';
import 'package:organic_market/ui/order_making_page/order_making_page.dart';
import 'package:organic_market/ui/product_page/product_page.dart';

import 'package:organic_market/utils/app_router.gr.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final appRouter = AutoRouter();

  @override
  Widget build(BuildContext context) {
    // return ScreenUtilInit(
    //   designSize: const Size(360, 690),
    //   minTextAdapt: true,
    //   splitScreenMode: true,
    //   builder: (_, __) {
    //     return MaterialApp.router(
    //       title: 'Flutter Demo',
    //       theme: ThemeData(
    //         appBarTheme: const AppBarTheme(
    //           centerTitle: true,
    //           shape: RoundedRectangleBorder(
    //             borderRadius: BorderRadius.only(
    //               bottomRight: Radius.circular(15),
    //               bottomLeft: Radius.circular(15),
    //             ),
    //           ),
    //           backgroundColor: AppColors.white,
    //         ),
    //         // fontFamily: "Jost",
    //         primarySwatch: Colors.blue,
    //       ),
    //       routerDelegate: appRouter.delegate(),
    //       routeInformationParser: appRouter.defaultRouteParser(),
    //       debugShowCheckedModeBanner: false,
    //     );
    //   },
    // );
    return MaterialApp(
      home: OrderMakingPage(),
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(15),
              bottomLeft: Radius.circular(15),
            ),
          ),
          backgroundColor: AppColors.white,
        ),
        // fontFamily: "Jost",
        primarySwatch: Colors.blue,
      ),
    );
  }
}
