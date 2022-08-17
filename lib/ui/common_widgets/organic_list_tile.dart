import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/common/app_styles.dart';

class OrganicListTile extends StatelessWidget {
  final void Function() onTap;
  final Widget? icon;
  final String title;
  final TextStyle titleStyle;
  final String? subtitle;

  const OrganicListTile({
    Key? key,
    required this.onTap,
    this.icon,
    required this.title,
    this.subtitle,
    this.titleStyle = AppStyles.header5,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            color: Colors.transparent,
            child: Row(
              children: [
                icon ?? Container(),
                icon == null ? Container() : SizedBox(width: 12.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      subtitle == null
                          ? Container()
                          : Text(
                              subtitle!,
                              style: AppStyles.bodyGrey7,
                            ),
                      Text(
                        title,
                        style: titleStyle,
                      ),
                    ],
                  ),
                ),
                Image.asset('assets/icons/forward.png'),
              ],
            ),
          ),
        ),
        SizedBox(height: 26.h),
      ],
    );
  }
}
