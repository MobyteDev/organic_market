import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/common/app_colors.dart';
import 'package:organic_market/common/app_styles.dart';

class OrganicTextField extends StatelessWidget {
  final String labelText;
  final Widget? suffixIcon;
  final TextEditingController controller;
  final bool isFloatingLabel;
  final void Function(String?)? onSubmitted;
  final double? width;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;

  const OrganicTextField({
    Key? key,
    required this.labelText,
    required this.controller,
    this.suffixIcon,
    this.isFloatingLabel = true, // Будет ли лейбл подниматься вверх
    this.onSubmitted,
    this.width,
    this.keyboardType,
    this.inputFormatters,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: width == null ? double.infinity : width!,
      ),
      child: TextField(
        style: AppStyles.header2,
        controller: controller,
        keyboardType: keyboardType,
        onSubmitted: onSubmitted,
        inputFormatters: inputFormatters,
        decoration: InputDecoration(
          labelText: labelText,
          border: isFloatingLabel
              ? InputBorder.none
              : OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(Radius.circular(4.r)),
                ),
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
