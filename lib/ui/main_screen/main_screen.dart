import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/data/offer.dart';
import 'package:organic_market/data/product.dart';
import 'package:organic_market/data/product_category.dart';
import 'package:organic_market/ui/common_widgets/address_app_bar.dart';
import 'package:organic_market/ui/common_widgets/organic_app_bar.dart';
import 'package:organic_market/ui/common_widgets/organic_navigation_bar.dart';
import 'package:organic_market/ui/common_widgets/product_card_list.dart';
import 'package:organic_market/ui/main_screen/big_card_list.dart';
import 'package:organic_market/ui/main_screen/brands.dart';
import 'package:organic_market/ui/main_screen/category_list.dart';
import 'package:organic_market/ui/main_screen/footer.dart';
import 'package:organic_market/ui/product_page/product_page.dart';
import 'package:organic_market/utils/app_router.gr.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: OrganicAppBar(
          title: 'ул. Пушкина 15, д. 20, кв. 113',
          prefixIcon: Image.asset('assets/icons/green_car.png'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 0.04.sh),
              BigCardList(
                offers: <Offer>[
                  Offer(
                    title: "Настоящая икра без консервантов",
                    description:
                        "Попробуйте икру без химических добавок и консервантов",
                    image: "assets/images/offer1.png",
                  ),
                  Offer(
                    title: "Новинка от УГЛЕЧЕ ПОЛЕ",
                    description:
                        "Продукт кисломолочный Угурт питьевой с Вишней 250г",
                    image: "assets/images/offer2.png",
                  ),
                  Offer(
                    title: "Настоящая икра без консервантов",
                    description:
                        "Попробуйте икру без химических добавок и консервантов",
                    image: "assets/images/offer1.png",
                  ),
                ],
              ),
              SizedBox(height: 10),
              CategoryList(categories: [
                ProductCategory(
                    "Молочные продукты, яйцо", "assets/images/categories/milk.png"),
                ProductCategory(
                    "Молочные продукты, яйцо", "assets/images/categories/milk.png"),
                ProductCategory(
                    "Молочные продукты, яйцо", "assets/images/categories/milk.png"),
                ProductCategory(
                    "Молочные продукты, яйцо", "assets/images/categories/milk.png"),
                ProductCategory(
                    "Молочные продукты, яйцо", "assets/images/categories/milk.png"),
                ProductCategory(
                    "Молочные продукты, яйцо", "assets/images/categories/milk.png"),
                ProductCategory(
                    "Молочные продукты, яйцо", "assets/images/categories/milk.png")
              ]),
              ProductCardList(
                title: "Лучшие предложения",
                products: [
                  Product("Масло сливочное Традиционное", 0.35, 329,
                      "assets/images/product.png"),
                  Product("Масло сливочное Традиционное", 0.35, 329,
                      "assets/images/product.png"),
                  Product("Масло сливочное Традиционное", 0.35, 329,
                      "assets/images/product.png"),
                  Product("Масло сливочное Традиционное", 0.35, 329,
                      "assets/images/product.png")
                ],
              ),
              ProductCardList(
                title: "Уже покупали",
                products: [
                  Product("Масло сливочное Традиционное", 0.35, 329,
                      "assets/images/product.png"),
                  Product("Масло сливочное Традиционное", 0.35, 329,
                      "assets/images/product.png"),
                  Product("Масло сливочное Традиционное", 0.35, 329,
                      "assets/images/product.png"),
                  Product("Масло сливочное Традиционное", 0.35, 329,
                      "assets/images/product.png")
                ],
              ),
              Brands(),
              SizedBox(height: 0.05.h),
              Footer(),
            ],
          ),

        ),
    );
  }
}
