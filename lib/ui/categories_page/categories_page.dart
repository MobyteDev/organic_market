import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/data/product_category.dart';
import 'package:organic_market/ui/categories_page/button_section.dart';
import 'package:organic_market/ui/categories_page/category_grid.dart';
import 'package:organic_market/ui/product_page/widgets/product_app_bar.dart';

import 'package:organic_market/ui/common_widgets/organic_app_bar.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OrganicAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15.5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 17.h,),
                  ButtonSection(alreadyBought: (){}, discounts: (){}, favorite: (){}),
                  SizedBox(height: 32.h,),
                  CategoryGrid(
                    categories: [
                      ProductCategory("Молочные продукты, яйцо",
                          "assets/images/category.png"),
                      ProductCategory("Молочные продукты, яйцо",
                          "assets/images/category.png"),
                      ProductCategory("Молочные продукты, яйцо",
                          "assets/images/category.png"),
                      ProductCategory("Молочные продукты, яйцо",
                          "assets/images/category.png"),
                      ProductCategory("Молочные продукты, яйцо",
                          "assets/images/category.png"),
                      ProductCategory("Молочные продукты, яйцо",
                          "assets/images/category.png"),
                      ProductCategory("Молочные продукты, яйцо",
                          "assets/images/category.png"),
                      ProductCategory("Молочные продукты, яйцо",
                          "assets/images/category.png"),
                      ProductCategory("Молочные продукты, яйцо",
                          "assets/images/category.png"),
                      ProductCategory("Молочные продукты, яйцо",
                          "assets/images/category.png"),
                      ProductCategory("Молочные продукты, яйцо",
                          "assets/images/category.png"),
                      ProductCategory("Молочные продукты, яйцо",
                          "assets/images/category.png"),
                      ProductCategory("Молочные продукты, яйцо",
                          "assets/images/category.png"),
                      ProductCategory("Молочные продукты, яйцо",
                          "assets/images/category.png"),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
