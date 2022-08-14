import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/common/app_styles.dart';
import 'package:organic_market/ui/common_widgets/organic_button.dart';
import 'package:organic_market/ui/order_success_page.dart/order_success_page.dart';

class OrderMakingBottomBar extends StatelessWidget {
  final String buttonLabel;
  final void Function() onTapButton;
  final String label;
  final String textButtonLabel;

  const OrderMakingBottomBar({
    Key? key,
    required this.buttonLabel,
    required this.label,
    required this.textButtonLabel,
    required this.onTapButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140.h,
      padding: EdgeInsets.all(15.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
        boxShadow: [
          BoxShadow(
            blurRadius: 20,
            color: Colors.grey.withOpacity(0.3),
          ),
        ],
      ),
      child: Column(
        children: [
          OrganicButton(
            buttonLabel: buttonLabel,
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const OrderSuccessPage(),
                ),
              );
            },
            height: 58.h,
            width: 343.w,
          ),
          const SizedBox(height: 10),
          Text(
            label,
            textAlign: TextAlign.center,
            style: AppStyles.bodyGrey2,
          ),
          Text(
            textButtonLabel,
            textAlign: TextAlign.center,
            style: AppStyles.bodyGreen2,
          ),
        ],
      ),
    );
  }
}
