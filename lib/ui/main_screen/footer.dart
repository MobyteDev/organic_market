import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/common/app_colors.dart';
import 'package:organic_market/common/app_styles.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Row(
          children: [
            const Spacer(),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                textStyle: AppStyles.header1,
                backgroundColor: AppColors.green149202_1,
                foregroundColor: AppColors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: SizedBox(
                width: 0.35.sw,
                height: 0.07.sh,
                child: const Center(child: Text("О комании")),
              ),
            ),
            const Spacer(),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                textStyle: AppStyles.header1,
                backgroundColor: AppColors.green149202_1,
                foregroundColor: AppColors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: SizedBox(
                  width: 0.35.sw,
                  height: 0.07.sh,
                  child: const Center(child: Text("Об органике"))),
            ),
            const Spacer(),
          ],
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: (){}, style: TextButton.styleFrom(foregroundColor: AppColors.green149202_1, textStyle: AppStyles.header3), child: Text("Доставка")),
            TextButton(onPressed: (){}, style: TextButton.styleFrom(foregroundColor: AppColors.green149202_1, textStyle: AppStyles.header3), child: Text("Опалата")),
            TextButton(onPressed: (){}, style: TextButton.styleFrom(foregroundColor: AppColors.green149202_1, textStyle: AppStyles.header3), child: Text("Поддержка")),
            TextButton(onPressed: (){}, style: TextButton.styleFrom(foregroundColor: AppColors.green149202_1, textStyle: AppStyles.header3), child: Text("Сертификаты")),
          ],
        )
      ],
    );
  }
}
