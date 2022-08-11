import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/common/app_styles.dart';
import 'package:organic_market/data/product_category.dart';
import 'package:organic_market/ui/common_widgets/category_card.dart';

class CategoryGrid extends StatelessWidget {
  const CategoryGrid({Key? key, required this.categories}) : super(key: key);

  final List<ProductCategory> categories;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1.sw,
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Категории",
              style: AppStyles.bigHeader,
            ),
          ),
          SizedBox(height: 0.02.sh),
          GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, i) => CategoryCard(category: categories[i], onTap: (){}, width: 163.w),
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 163.w/117.h, crossAxisSpacing: 16.h, mainAxisSpacing: 16.w),
            itemCount: categories.length,
            shrinkWrap: true,
          ),
        ],
      ),
    );
  }
}
