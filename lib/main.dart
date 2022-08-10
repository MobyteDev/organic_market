import 'package:flutter/material.dart';
import 'package:organic_market/common/app_colors.dart';
import 'package:organic_market/ui/main_screen/main_screen.dart';
import 'package:organic_market/ui/order_making_screen/order_making_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
        primarySwatch: Colors.blue,
      ),
      home: const OrderMakingScreen(),
    );
  }
}
