import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/common/app_colors.dart';
import 'package:organic_market/common/app_styles.dart';

class AddressAppBar extends StatelessWidget with PreferredSizeWidget {
  const AddressAppBar({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      enableFeedback: true,
      child: AppBar(
        centerTitle: true,
        title: Row(
          children: [
            Spacer(),
            Image.asset("assets/icons/green_car.png"),
            SizedBox(width: 8.h,),
            Text(title, style: AppStyles.header3.copyWith(color: AppColors.black),),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
