import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/bloc/auth_dialog_bloc.dart';
import 'package:organic_market/common/app_colors.dart';
import 'package:organic_market/common/app_styles.dart';

class PhoneDialog extends StatefulWidget {
  const PhoneDialog({super.key});

  @override
  State<PhoneDialog> createState() => _PhoneDialogState();
}

class _PhoneDialogState extends State<PhoneDialog> {
  final phoneController = TextEditingController();

  @override
  void dispose() {
    phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Text(
            "Номер телефона",
            style: AppStyles.header7,
          ),
          SizedBox(height: 8.h),
          Text(
            "Для продолжения оформления заказа, укажите номер телефона",
            style: AppStyles.bodyGrey5,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 24.h),
          TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              fillColor: AppColors.grey242243240_1,
              filled: true,
            ),
            keyboardType: TextInputType.phone,
            textAlign: TextAlign.center,
            controller: phoneController,
          ),
          SizedBox(height: 24.h),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: AppColors.green149202_1,
              foregroundColor: AppColors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            onPressed: () {
              BlocProvider.of<AuthDialogBloc>(context).add(CodeSentEvent(phoneController.text));
            },
            child: SizedBox(
              height: 50.h,
              width: 1.sw,
              child: Center(
                child: Text(
                  "Получить код",
                  style: AppStyles.header1,
                ),
              ),
            ),
          ),
          SizedBox(height: 24.h),
          Text(
            "Нажимая “Получить код”, я соглашаюсь с Условиями продажи, Политикой конфиденциальности и Политикой в отношении обработки персональных данных.",
            style: AppStyles.bodyGrey2,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 24.h),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: AppColors.black,
              foregroundColor: AppColors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            onPressed: () {
            },
            child: SizedBox(
              height: 50.h,
              width: 1.sw,
              child: Center(
                child: Text(
                  "Получить код",
                  style: AppStyles.header1,
                ),
              ),
            ),
          ),
          SizedBox(height: 33.h),
        ],
      ),
    );
  }
}
