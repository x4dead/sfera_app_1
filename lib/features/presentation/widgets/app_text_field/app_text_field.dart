import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../../themes/colors/colors.dart';
import '../../../../themes/text_style/text_style.dart';

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
    required this.inputFormatters,
  }) : super(key: key);
  final String text;
  final int? maxLength;
  final Widget? suffix;
  final bool? obscureText;
  final IconData? icon;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      inputFormatters: inputFormatters,
      obscureText: obscureText ?? false,
      maxLength: maxLength,
      controller: controller,
      validator: validator,
      style: AppTextStyle.w400s14.copyWith(
          color: Theme.of(context).brightness == Brightness.dark
              ? AppColors.color000000.withOpacity(0.85)
              : null),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.zero,
        counterText: '',
        hintText: '$text:',
        hintStyle: TextStyle(
          color: Theme.of(context).brightness == Brightness.dark
              ? AppColors.color000000.withOpacity(0.7)
              : null,
        ),
        filled: true,
        fillColor: AppColors.colorFFFFFF,
        suffixIcon: suffix,
        prefixIcon: Icon(
          icon,
          color: AppColors.color000000.withOpacity(0.85),
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
    );
  }
}
