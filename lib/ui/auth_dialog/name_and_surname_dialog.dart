import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/bloc/auth_dialog_bloc.dart';
import 'package:organic_market/common/app_colors.dart';
import 'package:organic_market/common/app_styles.dart';

class NameAndSurnameDialog extends StatefulWidget {
  const NameAndSurnameDialog({super.key});

  @override
  State<NameAndSurnameDialog> createState() => _NameAndSurnameState();
}

class _NameAndSurnameState extends State<NameAndSurnameDialog> {
  final nameController = TextEditingController();
  final surnameController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    surnameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Text(
            "Как к вам обращаться?",
            style: AppStyles.header7,
          ),
          SizedBox(height: 24.h),
          TextField(
            decoration: InputDecoration(
              hintText: "Имя",
              border: InputBorder.none,
              fillColor: AppColors.grey242243240_1,
              filled: true,
            ),
            textAlign: TextAlign.center,
            controller: nameController,
          ),
          SizedBox(height: 8.h),
          TextField(
            decoration: InputDecoration(
              hintText: "Фамилия",
              border: InputBorder.none,
              fillColor: AppColors.grey242243240_1,
              filled: true,
            ),
            textAlign: TextAlign.center,
            controller: surnameController,
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
              BlocProvider.of<AuthDialogBloc>(context).add(
                  AuthEndedEvent(nameController.text, surnameController.text));
            },
            child: SizedBox(
              height: 50.h,
              width: 1.sw,
              child: Center(
                child: Text(
                  "Продолжить оформление",
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
