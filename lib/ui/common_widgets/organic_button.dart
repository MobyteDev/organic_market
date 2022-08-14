import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/common/app_colors.dart';

class OrganicButton extends StatelessWidget {
  final String buttonLabel;
  final void Function() onTap;
  final double height;
  final double width;

  const OrganicButton({
    Key? key,
    required this.buttonLabel,
    required this.onTap,
    required this.height,
    required this.width,
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
            height: height,
            width: width,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: AppColors.green149202_1,
              borderRadius: BorderRadius.all(Radius.circular(30.r)),
            ),
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
