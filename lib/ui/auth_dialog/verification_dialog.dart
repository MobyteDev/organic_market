import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/bloc/auth_dialog_bloc.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:organic_market/common/app_colors.dart';
import 'package:organic_market/common/app_styles.dart';

class VerificationDialog extends StatefulWidget {
  const VerificationDialog({super.key, required this.phone});

  final String phone;

  @override
  State<VerificationDialog> createState() => _VerificationState();
}

class _VerificationState extends State<VerificationDialog> {
  final pinController = TextEditingController();

  @override
  void dispose() {
    pinController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        width: 1.sw,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Код подтверждения",
              style: AppStyles.header7,
            ),
            SizedBox(height: 8.h),
            Text("Введите код, который пришел на номер ${widget.phone}"),
            SizedBox(height: 24.h),
            SizedBox(
              width: 264.w,
              child: PinCodeTextField(
                appContext: context,
                length: 4,
                onChanged: (String value) {},
                onCompleted: (String value) {BlocProvider.of<AuthDialogBloc>(context).add(PinSubmittedEvent(pinController.text));},
                keyboardType: TextInputType.number,
                enableActiveFill: true,

                pinTheme: PinTheme(
                  activeColor: AppColors.grey242243240_1,
                  activeFillColor: AppColors.grey242243240_1,
                  inactiveColor: AppColors.grey242243240_1,
                  inactiveFillColor: AppColors.grey242243240_1,
                  selectedColor: AppColors.grey242243240_1,
                  selectedFillColor: AppColors.grey242243240_1,
                  shape: PinCodeFieldShape.box,

                  fieldHeight: 51.h,
                  fieldWidth: 54.w,

                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                  foregroundColor: AppColors.green149202_1,
                  textStyle: AppStyles.bodyGreen3),
              child: Text("Выслать код повторно"),
            ),
            SizedBox(height: 33.h),
          ],
        ),
      ),
    );
  }
}
