import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/common/app_colors.dart';

class OrganicButton extends StatelessWidget {
  final String buttonLabel;
  final void Function() onTap;
  final EdgeInsets padding;

  const OrganicButton({
    Key? key,
    required this.buttonLabel,
    required this.onTap,
    this.padding = const EdgeInsets.all(20),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30.r)),
          color: Colors.white,
        ),
        child: InkWell(
          borderRadius: BorderRadius.all(Radius.circular(30.r)),
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.green149202_1,
              borderRadius: BorderRadius.all(Radius.circular(30.r)),
            ),
            padding: padding,
            child: Text(
              buttonLabel,
              style: const TextStyle(
                fontFamily: "Jost",
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
