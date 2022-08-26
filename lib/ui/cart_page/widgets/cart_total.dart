import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/common/app_colors.dart';
import 'package:organic_market/common/app_styles.dart';

class CartTotal extends StatelessWidget {
  const CartTotal(
      {Key? key, required this.sum, required this.amount, required this.oldSum})
      : super(key: key);
  final int sum;
  final int oldSum;
  final int amount;

  String wordForm(int amount) {
    int temp = amount % 100;
    if (temp >= 5 && temp <= 20) {
      return "$amount товаров";
    }
    temp %= 10;
    if (temp == 1) {
      return "$amount товар";
    }
    if (temp >= 2 && temp <= 4) {
      return "$amount товара";
    }
    return "$amount товаров";
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(wordForm(amount), style: AppStyles.bodyGrey3),
            Spacer(),
            Text("$sum ₽", style: AppStyles.body3),
          ],
        ),
        SizedBox(height: 4.h,),
        oldSum == sum
            ? Center()
            : Row(
                children: [
                  Text("Скидка ${(100 - sum / oldSum * 100).floor()}%", style: AppStyles.body3.copyWith(color: AppColors.pink5589_1)),
                  Spacer(),
                  Text("-${(oldSum - sum)} ₽", style: AppStyles.body3.copyWith(color: AppColors.pink5589_1)),
                ],
              )
      ],
    );
  }
}
