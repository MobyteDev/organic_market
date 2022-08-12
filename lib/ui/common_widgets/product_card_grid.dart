import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/common/app_styles.dart';
import 'package:organic_market/data/product.dart';
import 'package:organic_market/data/sort_enum.dart';
import 'package:organic_market/ui/common_widgets/product_card.dart';

class ProductCardGrid extends StatelessWidget {
  const ProductCardGrid({Key? key, required this.title, required this.products, required this.sort})
      : super(key: key);

  final String? title;
  final List<Product> products;
  final SortEnum sort;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          title == null
              ? Center()
              : Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        title!,
                        style: AppStyles.bigHeader,
                      ),
                    ),
                    SizedBox(height: 0.02.sh),
                  ],
                ),
          GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, i) => ProductCard(product: products[i]),
            itemCount: products.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16.h,
                mainAxisSpacing: 8.w,
            childAspectRatio: 167.5.w/240.h),
            shrinkWrap: true,
          ),
        ],
      ),
    );
  }
}
//
