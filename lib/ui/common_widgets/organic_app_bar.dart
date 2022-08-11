import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:icon_forest/iconoir.dart';
import 'package:organic_market/common/app_colors.dart';
import 'package:organic_market/common/app_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrganicAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  final Widget? prefixIcon;

  const OrganicAppBar({
    Key? key,
    required this.title,
    this.prefixIcon,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(240, 234, 234, 1),
                spreadRadius: 10.r,
                blurRadius: 15.r,
              ),
            ],
          ),
        ),
        AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              prefixIcon != null ? prefixIcon! : Container(),
              SizedBox(width: 10.w),
              Text(title),
            ],
          ),
        ),
      ],
    );
  }
}
