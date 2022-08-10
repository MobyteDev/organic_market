import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:organic_market/common/app_colors.dart';
import 'package:organic_market/common/app_styles.dart';
import 'package:organic_market/data/product_category.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    required this.category,
    required this.onTap,
    required this.width,
  });

  final ProductCategory category;
  final double width;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2.0),
      width: width,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: AppColors.grey242243240_1,
            spreadRadius: 5,
            blurRadius: 10,
            offset: Offset(0, 5),
            //blurStyle: BlurStyle.outer,
          ),
        ],
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Image.asset(category.image),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              category.name,
              style: AppStyles.body2,
            ),
          ),
        ],
      ),
    );
  }
}
