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
  final bool isBack;
  final List<Widget>? actions;

  const OrganicAppBar({
    Key? key,
    required this.title,
    this.prefixIcon,
    this.isBack = false,
    this.actions,
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
                spreadRadius: 10,
                blurRadius: 15,
              ),
            ],
          ),
        ),
        AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              prefixIcon != null ? prefixIcon! : Container(),
              SizedBox(width: 10),
              Text(title),
            ],
          ),
          leading: isBack
              ? Icon(
                  Icons.arrow_back_ios,
                  color: AppColors.grey209204204_1,
                  size: 20,
                )
              : actions != null
                  ? SizedBox(width: 56)
                  : null,
          actions: actions ??
              [
                isBack ? SizedBox(width: 56) : Container(),
              ],
        ),
      ],
    );
  }
}
