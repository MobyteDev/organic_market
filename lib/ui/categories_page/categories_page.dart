import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/data/product_category.dart';
import 'package:organic_market/ui/categories_page/button_section.dart';
import 'package:organic_market/ui/categories_page/category_grid.dart';
import 'package:organic_market/ui/common_widgets/address_app_bar.dart';
import 'package:organic_market/ui/product_page/widgets/product_app_bar.dart';

import 'package:organic_market/ui/common_widgets/organic_app_bar.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OrganicAppBar(
        title: "ул. Пушкина 15, д. 20, кв. 113",
        prefixIcon: Image.asset('assets/icons/green_car.png'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15.5,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 17.h,
              ),
              ButtonSection(
                  alreadyBought: () {}, discounts: () {}, favorite: () {}),
              SizedBox(
                height: 32.h,
              ),
              CategoryGrid(
                categories: [
                  ProductCategory(
                      "Молочные продукты, яйцо", "assets/images/categories/milk.png"),
                  ProductCategory(
                      "Мясо, птица", "assets/images/categories/meat_c.png"),
                  ProductCategory(
                      "Овощи, фрукты, зелень", "assets/images/categories/greens.png"),
                  ProductCategory(
                      "Хлеб, выпечка", "assets/images/categories/bakery.png"),
                  ProductCategory(
                      "Кондитерские изделия", "assets/images/categories/sweets.png"),
                  ProductCategory(
                      "Детям", "assets/images/categories/children.png"),
                  ProductCategory(
                      "Товары для дома", "assets/images/categories/house.png"),
                  ProductCategory(
                      "Бакалея", "assets/images/categories/groceries.png"),
                  ProductCategory(
                      "Напитки, соки, чай, кофе", "assets/images/categories/drinks.png"),
                  ProductCategory(
                      "Замороженные продукты", "assets/images/categories/frozen.png"),
                  ProductCategory(
                      "Рыба, икра, краб", "assets/images/categories/fish.png"),
                  ProductCategory(
                      "Рыба, икра, краб", "assets/images/categories/alcohol.png"),
                  ProductCategory(
                      "Биологически активные добавки", "assets/images/categories/bio.png"),
                  ProductCategory(
                      "Суперфуды", "assets/images/categories/superfood.png"),
                ],
              ),
              SizedBox(
                height: 37.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
