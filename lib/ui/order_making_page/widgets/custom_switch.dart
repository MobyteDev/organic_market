import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:organic_market/common/app_colors.dart';

class CustomSwitch extends StatelessWidget {
  final bool value;
  final void Function(bool) onChanged;

  const CustomSwitch({
    Key? key,
    required this.onChanged,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlutterSwitch(
      width: 43.w,
      height: 25.h,
      toggleSize: 15.r,
      borderRadius: 20.r,
      padding: 5.h,
      inactiveColor: AppColors.grey242243240_1,
      activeColor: AppColors.green149202_1,
      value: value,
      onToggle: onChanged,
    );
  }
}
