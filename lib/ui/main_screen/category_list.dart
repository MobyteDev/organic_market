import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/common/app_styles.dart';
import 'package:organic_market/ui/common_widgets/category_card.dart';

import '../../data/product_category.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({Key? key, required this.categories}) : super(key: key);

  final List<ProductCategory> categories;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Популярные категории",
                style: AppStyles.bigHeader,
              )),
          SizedBox(height: 0.02.sh),
          SizedBox(
            height: 0.25.sw,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, i) => CategoryCard(
                category: categories[i],
                width: 0.25.sw,
                onTap: () {
                  // context.r
                },
              ),
              separatorBuilder: (context, index) => SizedBox(width: 0.02.sw),
              itemCount: categories.length,
              clipBehavior: Clip.none,
            ),
          ),
        ],
      ),
    );
  }
}
