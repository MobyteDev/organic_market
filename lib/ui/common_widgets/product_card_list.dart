import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/common/app_styles.dart';
import 'package:organic_market/data/product.dart';
import 'package:organic_market/ui/common_widgets/product_card.dart';

class ProductCardList extends StatelessWidget {
  const ProductCardList({
    Key? key,
    this.title,
    required this.products,
    this.smallTitle = false,
  }) : super(key: key);

  final bool smallTitle;
  final String? title;
  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          title != null ? Align(
            alignment: Alignment.centerLeft,
            child: Text(
              title!,
              style: smallTitle ? AppStyles.bigHeader2 : AppStyles.bigHeader,
            ),
          ) : Container(),
          SizedBox(height: 0.02.sh),
          SizedBox(
            height: 0.3.sh,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, i) => ProductCard(product: products[i]),
                separatorBuilder: (context, index) => SizedBox(width: 0.02.sw),
                itemCount: products.length,
                clipBehavior: Clip.none),
          ),
        ],
      ),
    );
  }
}
//
