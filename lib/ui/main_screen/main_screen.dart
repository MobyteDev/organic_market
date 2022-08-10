import 'package:flutter/material.dart';
import 'package:organic_market/data/offer.dart';
import 'package:organic_market/data/product.dart';
import 'package:organic_market/data/product_category.dart';
import 'package:organic_market/ui/common_widgets/organic_app_bar.dart';
import 'package:organic_market/ui/common_widgets/product_card_list.dart';
import 'package:organic_market/ui/main_screen/big_card_list.dart';
import 'package:organic_market/ui/main_screen/brands.dart';
import 'package:organic_market/ui/main_screen/category_list.dart';
import 'package:organic_market/ui/main_screen/footer.dart';

import '../../common/app_colors.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OrganicAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            SizedBox(height: 10),
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
                  "Молочные продукты, яйцо", "assets/images/category.png"),
              ProductCategory(
                  "Молочные продукты, яйцо", "assets/images/category.png"),
              ProductCategory(
                  "Молочные продукты, яйцо", "assets/images/category.png"),
              ProductCategory(
                  "Молочные продукты, яйцо", "assets/images/category.png"),
              ProductCategory(
                  "Молочные продукты, яйцо", "assets/images/category.png"),
              ProductCategory(
                  "Молочные продукты, яйцо", "assets/images/category.png"),
              ProductCategory(
                  "Молочные продукты, яйцо", "assets/images/category.png")
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
            Footer(),
          ],
        ),
      ),
    );
  }
}
