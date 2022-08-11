import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/common/app_colors.dart';

class ProductAppBar extends StatelessWidget with PreferredSizeWidget {
  const ProductAppBar({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(
          color: AppColors.black,
          fontSize: 16.sh,
        ),
      ),
      leading: InkWell(
        child: Image.asset(
          "assets/icons/back.png",
        ),
        onTap: () {
          context.router.pop();
        },
      ),
      actions: [
        Row(
          children: [
            InkWell(
              child: Image.asset(
                "assets/icons/share.png",
              ),
              onTap: () {
                
              },
            ),
            SizedBox(
              width: 17.w,
            ),
            InkWell(
              child: Image.asset(
                "assets/icons/like.png",
              ),
              onTap: () {},
            ),
            SizedBox(
              width: 14.w,
            ),
          ],
        ),
      ],
    );
  }
}
