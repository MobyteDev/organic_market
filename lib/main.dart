import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/common/app_colors.dart';
import 'package:organic_market/data/subcategory.dart';
import 'package:organic_market/ui/categories_page/categories_page.dart';
import 'package:organic_market/ui/main_screen/main_screen.dart';
import 'package:organic_market/ui/pick_subcategory_page/pick_subcategory_page.dart';
import 'package:organic_market/ui/product_page/product_page.dart';
import 'package:organic_market/ui/subcategory_page/subcategory_page.dart';

//import 'package:organic_market/utils/app_router.gr.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  //final appRouter = AutoRouter();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, __) {

        //PickSubcategoryPage(subcategories: [Subcategory("Чай"), Subcategory("Чай"), Subcategory("Чай"), Subcategory("Чай")])
        //CategoriesPage()
        //MainScreen()
        //SubcategoryPage()
        return MaterialApp(home: SubcategoryPage(), theme: ThemeData(
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
        ),);/*MaterialApp.router(

          title: 'Flutter Demo',
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

          routerDelegate: appRouter.delegate(),
          routeInformationParser: appRouter.defaultRouteParser(),
          debugShowCheckedModeBanner: false,
        );*/
      },
    );
  }
}