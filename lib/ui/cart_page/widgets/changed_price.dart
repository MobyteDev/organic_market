import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/common/app_colors.dart';
import 'package:organic_market/common/app_styles.dart';
import 'package:organic_market/ui/cart_page/widgets/strikethrough_text.dart';

class ChangedPrice extends StatelessWidget {
  const ChangedPrice({Key? key, required this.oldPrice, required this.newPrice}) : super(key: key);

  final int oldPrice;
  final int newPrice;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("$newPrice ₽", style: AppStyles.body7.copyWith(color: AppColors.pink5589_1),),
        SizedBox(width: 8.w,),
        StrikeThroughText(text: "$oldPrice ₽", style: AppStyles.bodyGrey1),
      ],
    );
  }

}