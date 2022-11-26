import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import '../../../../themes/colors/colors.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    Key? key,
    required this.text,
    this.maxLength,
    this.suffix,
    this.obscureText,
    this.icon,
    this.controller,
    this.validator,
  }) : super(key: key);
  final String text;
  final int? maxLength;
  final Widget? suffix;
  final bool? obscureText;
  final IconData? icon;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText ?? false,
      maxLength: maxLength,
      controller: controller,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.zero,
        counterText: '',
        hintText: '$text:',
        filled: true,
        fillColor: AppColors.colorFFFFFF,
        suffixIcon: suffix,
        prefixIcon: Icon(
          icon,
          color: AppColors.color000000,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide.none,
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide:
              const BorderSide(color: AppColors.colorF44336, width: 0.7),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide:
              const BorderSide(color: AppColors.colorF44336, width: 0.7),
        ),
      ),
      validator: validator,
    );
  }
}
