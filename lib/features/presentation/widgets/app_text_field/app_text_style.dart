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
  }) : super(key: key);
  final String text;
  final int? maxLength;
  final Widget? suffix;
  final bool? obscureText;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText ?? false,
      maxLength: maxLength,
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
      ),
    );
  }
}
