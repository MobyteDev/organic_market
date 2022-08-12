import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/common/app_colors.dart';
import 'package:organic_market/common/app_styles.dart';
import 'package:organic_market/data/subcategory.dart';
import 'package:organic_market/ui/common_widgets/organic_app_bar.dart';

class PickSubcategoryPage extends StatelessWidget {
  const PickSubcategoryPage({Key? key, required this.subcategories})
      : super(key: key);

  final List<Subcategory> subcategories;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OrganicAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView.separated(
          itemBuilder: (context, i) => InkWell(
            child: SizedBox(
              height: 40.h,
              child: Row(
                children: [
                  Text(subcategories[i].title, style: AppStyles.body1),
                  Spacer(),
                  Image.asset("assets/icons/forward.png")
                ],
              ),
            ),
            onTap: () {},
          ),
          separatorBuilder: (context, i) => Divider(
            color: AppColors.grey242243240_1,
            thickness: 2,
          ),
          itemCount: subcategories.length,
        ),
      ),
    );
  }
}
