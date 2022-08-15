import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/common/app_styles.dart';
import 'package:organic_market/ui/common_widgets/organic_button.dart';

class OrganicBottom extends StatelessWidget {
  final double height;
  final String buttonLabel;
  final double buttonHeight;
  final double buttonWidth;
  final void Function() onTap;
  final String? label;
  final String? textButtonLabel;

  const OrganicBottom({
    Key? key,
    required this.buttonLabel,
    required this.buttonHeight,
    required this.buttonWidth,
    required this.height,
    required this.onTap,
    this.label,
    this.textButtonLabel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: EdgeInsets.all(15.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(15.r)),
        boxShadow: [
          BoxShadow(
            blurRadius: 20.r,
            color: Colors.grey.withOpacity(0.3),
          ),
        ],
      ),
      child: Column(
        children: [
          OrganicButton(
            buttonLabel: buttonLabel,
            onTap: onTap,
            height: buttonHeight,
            width: buttonWidth,
          ),
          (label == null && textButtonLabel == null)
              ? Container()
              : const SizedBox(height: 10),
          label == null
              ? Container()
              : Text(
                  label!,
                  textAlign: TextAlign.center,
                  style: AppStyles.bodyGrey2,
                ),
          textButtonLabel == null
              ? Container(height: 0)
              : Text(
                  textButtonLabel!,
                  textAlign: TextAlign.center,
                  style: AppStyles.bodyGreen2,
                ),
        ],
      ),
    );
  }
}
