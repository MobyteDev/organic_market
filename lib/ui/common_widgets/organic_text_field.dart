import 'package:flutter/material.dart';
import 'package:organic_market/common/app_colors.dart';
import 'package:organic_market/common/app_styles.dart';

class OrganicTextField extends StatelessWidget {
  final String labelText;
  final Widget? suffixIcon;
  final TextEditingController controller;
  final bool isFloatingLabel;
  final void Function(String?)? onSubmitted;

  const OrganicTextField({
    Key? key,
    required this.labelText,
    required this.controller,
    this.suffixIcon,
    this.isFloatingLabel = true, // Будет ли лейбл подниматься вверх
    this.onSubmitted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextField(
        style: AppStyles.header2,
        controller: controller,
        onSubmitted: onSubmitted,
        decoration: InputDecoration(
          labelText: labelText,
          border: isFloatingLabel
              ? InputBorder.none
              : const OutlineInputBorder(borderSide: BorderSide.none),
          floatingLabelBehavior: isFloatingLabel
              ? FloatingLabelBehavior.auto
              : FloatingLabelBehavior.never,
          filled: true,
          fillColor: AppColors.grey242243240_1,
          labelStyle: AppStyles.bodyGrey3,
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}
