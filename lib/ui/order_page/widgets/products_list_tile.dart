import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/common/app_colors.dart';
import 'package:organic_market/common/app_styles.dart';
import 'package:organic_market/data/product.dart';
import 'package:organic_market/utils/formatting.dart';

class ProductsListTile extends StatelessWidget {
  final Product product;

  const ProductsListTile({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              height: 70.h,
              width: 70.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(4.r)),
                image: DecorationImage(
                  image: Image.asset(product.image).image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 16.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    style: AppStyles.body1,
                  ),
                  SizedBox(height: 8.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${Formatting.getFormattedPrice(product.price)} ₽',
                        style: AppStyles.header6,
                      ),
                      Text(
                        product.count == null
                            ? '${product.weight} кг'
                            : '${product.count} шт', // Пока что так, потом подумать
                        style: AppStyles.body3,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        Divider(
          color: AppColors.grey242243240_1,
          height: 25.h,
          thickness: 1,
        ),
      ],
    );
  }
}
