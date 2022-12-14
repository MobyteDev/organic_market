import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:organic_market/common/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrganicAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  final Widget? prefixIcon; // Иконка перед заголовком
  final bool isBack; // Наличие слева стрелки "назад"
  final List<Widget>? actions; // Иконки справа

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
          leading: GestureDetector(
            onTap: () {
              context.router.pop();
            },
            child: isBack
                ? Image.asset('assets/icons/back.png')
                : SizedBox(width: 56.w),
          ),
          actions: actions ??
              [
                SizedBox(width: 56.w),
              ],
        ),
      ],
    );
  }
}
