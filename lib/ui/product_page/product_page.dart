import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/common/app_colors.dart';
import 'package:organic_market/ui/product_page/widgets/features.dart';
import 'package:organic_market/ui/product_page/widgets/product_app_bar.dart';
import 'package:organic_market/ui/product_page/widgets/product_delivery.dart';
import 'package:organic_market/ui/product_page/widgets/switcher.dart';

class ProductPage extends StatelessWidget {
  final String title;
  const ProductPage({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProductAppBar(title: title),
      body: Column(
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
