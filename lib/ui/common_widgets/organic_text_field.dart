import 'package:flutter/material.dart';
import 'package:organic_market/common/app_colors.dart';
import 'package:organic_market/common/app_styles.dart';

class OrganicTextField extends StatelessWidget {
  final String labelText;
  final Widget? suffixIcon;
  final TextEditingController controller;

  const OrganicTextField({
    Key? key,
    required this.labelText,
    required this.controller,
    this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextFormField(
        style: AppStyles.header2,
        controller: controller,
        decoration: InputDecoration(
          labelText: labelText,
          border: InputBorder.none,
          filled: true,
          fillColor: AppColors.grey242243240_1,
          labelStyle: AppStyles.bodyGrey3,
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}
