import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/common/app_colors.dart';
import 'package:organic_market/common/app_styles.dart';

class Features extends StatelessWidget {
  final String discountTitle;
  final bool isOrganic;
  final bool isExpress;
  const Features({
    Key? key,
    required this.discountTitle,
    required this.isExpress,
    required this.isOrganic,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 55.w,
          height: 24.h,
          decoration: const BoxDecoration(
            color: AppColors.pink5589_1,
            borderRadius: BorderRadius.all(
              Radius.circular(
                4,
              ),
            ),
          ),
          child: Center(
            child: Text(
              '- $discountTitle%',
              style: AppStyles.body4,
            ),
          ),
        ),
        SizedBox(
          width: 8.w,
        ),
        isOrganic
            ? Container(
                width: 98.w,
                height: 24.h,
                decoration: const BoxDecoration(
                  color: AppColors.green14119863_1,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      4,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/icons/organic.png",
                    ),
                    SizedBox(
                      width: 4.w,
                    ),
                    Text(
                      "Органик",
                      style: AppStyles.body5,
                    ),
                  ],
                ),
              )
            : Container(),
        SizedBox(
          width: 8.w,
        ),
        isExpress
            ? Container(
                width: 155.w,
                height: 24.h,
                decoration: const BoxDecoration(
                  color: AppColors.yellow2210_1,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      4,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/icons/delivery.png",
                    ),
                    SizedBox(
                      width: 3.w,
                    ),
                    Text(
                      "Экспресс доставка",
                      style: AppStyles.body6,
                    ),
                  ],
                ),
              )
            : Container(),
      ],
    );
  }
}
