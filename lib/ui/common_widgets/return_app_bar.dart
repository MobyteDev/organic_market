import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/common/app_colors.dart';
import 'package:organic_market/common/app_styles.dart';

class ReturnAppBar extends StatelessWidget with PreferredSizeWidget {
  const ReturnAppBar({
    Key? key,
    required this.title,
    this.children = const [],
  }) : super(key: key);

  final String title;
  final List<Widget> children;

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight)+ (children.length == 0 ? Offset(0,0):Offset(0, 47.h));

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: AppStyles.header3.copyWith(color: AppColors.black),
      ),
      bottom: PreferredSize(
        preferredSize: Size(1.sw, 47.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: children,
        ),
      ),
      leading: InkWell(
        child: Image.asset(
          "assets/icons/back.png",
        ),
        onTap: () {Navigator.of(context).pop();},
      ),
    );
  }
}
