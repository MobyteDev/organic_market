import 'package:flutter/material.dart';
import 'package:organic_market/common/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Counter extends StatelessWidget {
  final int counter;

  const Counter({Key? key, required this.counter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.all(Radius.circular(20.r)),
      ),
      child: Container(
        height: 16.h,
        width: 16.w,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColors.pink5589_1,
          borderRadius: BorderRadius.all(Radius.circular(20.r)),
        ),
        child: Text(
          '$counter',
          style: TextStyle(
            color: AppColors.white,
            fontSize: 11,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
