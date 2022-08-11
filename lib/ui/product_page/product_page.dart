import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/common/app_colors.dart';
import 'package:organic_market/ui/common_widgets/product_card_list.dart';
import 'package:organic_market/ui/product_page/widgets/brand.dart';
import 'package:organic_market/ui/product_page/widgets/features.dart';
import 'package:organic_market/ui/product_page/widgets/product_app_bar.dart';
import 'package:organic_market/ui/product_page/widgets/product_delivery.dart';
import 'package:organic_market/ui/product_page/widgets/specifications.dart';
import 'package:organic_market/ui/product_page/widgets/switcher.dart';

import '../../data/product.dart';

class ProductPage extends StatelessWidget {
  final String title;
  const ProductPage({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grey242243240_1,
      appBar: ProductAppBar(title: title),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: AppColors.white,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15.5,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Features(
                          discountTitle: "25",
                          isExpress: true,
                          isOrganic: true,
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        Text(
                          title,
                        ),
                        SizedBox(
                          height: 36.h,
                        ),
                        const ProductDelivery(
                          deliveryTerm: "завтра",
                        ),
                        SizedBox(
                          height: 36.h,
                        ),
                        Switcher(
                          values: ["0,4кг", "1,2кг"],
                          discountsValues: ["", "20"],
                        ),
                        SizedBox(
                          height: 24.h,
                        ),
                        Specifications(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Brand(
              brandTitle: "Углече Поле",
            ),
            Container(
              color: AppColors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 15.5,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 24.h,
                    ),
                    Text(
                      "Рекомендуем",
                    ),
                    SizedBox(
                      height: 18.h,
                    ),
                    ProductCardList(
                      isTitled: false,
                      title: "title",
                      products: [
                        Product(
                          "Масло сливочное Традиционное",
                          0.35,
                          329,
                          "assets/images/product.png",
                        ),
                        Product(
                          "Масло сливочное Традиционное",
                          0.35,
                          329,
                          "assets/images/product.png",
                        ),
                        Product(
                          "Масло сливочное Традиционное",
                          0.35,
                          329,
                          "assets/images/product.png",
                        ),
                        Product(
                          "Масло сливочное Традиционное",
                          0.35,
                          329,
                          "assets/images/product.png",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
