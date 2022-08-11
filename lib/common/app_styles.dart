import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/common/app_colors.dart';

class AppStyles {
  static const TextStyle bigHeader = TextStyle(fontFamily: 'YesevaOne', fontSize: 24, fontWeight: FontWeight.w400);
  static const TextStyle body1 = TextStyle(fontFamily: 'Jost', fontSize: 14, fontWeight: FontWeight.w400);
  static const TextStyle body2 = TextStyle(fontFamily: 'Jost', fontSize: 12, fontWeight: FontWeight.w400);
  static const TextStyle body3 = TextStyle(fontFamily: 'Jost', fontSize: 18, fontWeight: FontWeight.w400);
  
  static const TextStyle bodyGrey1 = TextStyle(fontFamily: 'Jost', fontSize: 17, fontWeight: FontWeight.w400, color: AppColors.grey142144150_1);
  static const TextStyle bodyGrey2 = TextStyle(fontFamily: 'Jost', fontSize: 16, fontWeight: FontWeight.w400, color: AppColors.grey142144150_1);
  static const TextStyle bodyGrey3 = TextStyle(fontFamily: 'Jost', fontSize: 18, fontWeight: FontWeight.w400, color: AppColors.grey142144150_1);
  static const TextStyle bodyGreen1 = TextStyle(fontFamily: 'Jost', fontSize: 17, fontWeight: FontWeight.w600, color: AppColors.green149202_1);
  static const TextStyle bodyGreen2 = TextStyle(fontFamily: 'Jost', fontSize: 16, fontWeight: FontWeight.w500, color: AppColors.green149202_1);

  static const TextStyle header1 = TextStyle(fontFamily: 'Jost', fontSize: 18, fontWeight: FontWeight.w600, color: AppColors.black);
  static const TextStyle header2 = TextStyle(fontFamily: 'Jost', fontSize: 16, fontWeight: FontWeight.w500);
  static const TextStyle header3 = TextStyle(fontFamily: 'Jost', fontSize: 14, fontWeight: FontWeight.w500);
  static const TextStyle header4 = TextStyle(fontFamily: 'Jost', fontSize: 26, fontWeight: FontWeight.w600);
  static const TextStyle header5 = TextStyle(fontFamily: 'Jost', fontSize: 14, fontWeight: FontWeight.w600);
}