import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/common/app_colors.dart';
import 'package:organic_market/common/app_styles.dart';

class ProductAmountButton extends StatefulWidget {
  const ProductAmountButton({Key? key, required this.onChange, required this.onInc, required this.onDec}) : super(key: key);

  final void Function(int) onChange;
  final VoidCallback onInc;
  final VoidCallback onDec;

  @override
  State<ProductAmountButton> createState() => ProductAmountButtonState();
}

class ProductAmountButtonState extends State<ProductAmountButton> {
  int val = 1;

  @override
  Widget build(BuildContext context) {
    return Ink(
      height: 32.h,
      width: 104.h,
      decoration: BoxDecoration(
        color: AppColors.grey242243240_1,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
              icon: Icon(
                Icons.remove_rounded,
                color: AppColors.grey192192202_1,
              ),
              onPressed: () {
                if (val > 0)
                  setState(
                    () {
                      val--;
                      widget.onDec();
                    },
                  );
              },
              padding: EdgeInsets.zero,
              constraints: BoxConstraints(),
              iconSize: 12.w,
              splashRadius: 20.w),
          Center(
              child: Text(
            "${val} шт",
            style: AppStyles.body2,
          )),
          IconButton(
              icon: Icon(
                Icons.add_rounded,
                color: AppColors.grey192192202_1,
              ),
              onPressed: () {
                setState(
                  () {
                    val++;
                    widget.onInc();
                  },
                );
              },
              padding: EdgeInsets.zero,
              constraints: BoxConstraints(),
              iconSize: 12.w,
              splashRadius: 20.w),
        ],
      ),
    );
  }
}
