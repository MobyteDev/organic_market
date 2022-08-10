import 'package:flutter/material.dart';
import 'package:organic_market/common/app_colors.dart';
import 'package:organic_market/common/app_styles.dart';
import 'package:organic_market/data/product.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
        ],
      ),
      height: 0.30.sh,
      width: 0.45.sw,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              product.image,
              height: 0.15.sh,
              fit: BoxFit.contain,
            ),
            Text(
              product.name,
              style: AppStyles.body2,
            ),
            Text(
              "за ${product.weight} кг",
              style: AppStyles.body2.copyWith(color: AppColors.green14119863_1),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("${product.price} ₽", style: AppStyles.header1),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor: AppColors.green149202_1,
                    foregroundColor: AppColors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {
                    //TODO
                  },
                  child: const Icon(Icons.shopping_cart),
                ), //TODO svg icon
              ],
            ),
          ],
        ),
      ),
    );
  }
}
