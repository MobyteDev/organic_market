import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/ui/common_widgets/organic_button.dart';

class PersonalDataBottomBar extends StatelessWidget {
  final String buttonLabel;
  
  const PersonalDataBottomBar({Key? key, required this.buttonLabel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      padding: EdgeInsets.all(15.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
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
            onTap: () {},
            padding: EdgeInsets.symmetric(
              horizontal: 130.w,
              vertical: 20.h,
            ),
          ),
        ],
      ),
    );
  }
}
