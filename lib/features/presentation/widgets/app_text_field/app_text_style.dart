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
    required this.controller,
    required this.keyboardTypes,
  }) : super(key: key);
  final String text;
  final int? maxLength;
  final Widget? suffix;
  final bool? obscureText;
  final IconData? icon;
  final TextEditingController controller;

  final TextInputType keyboardTypes;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardTypes,
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
      ),
      validator: (v) {
        if (keyboardTypes == TextInputType.emailAddress) {
          if (!v!.contains('@') && !v.contains('.')) {
            return 'Incorrect email address';
          } else if (v.length < 12) {
            return 'Email must contain at least 12 characters';
          }
        } else if (keyboardTypes == TextInputType.text) {
          if (v!.length < 7 && !v.contains(RegExp(r'[A-Z]'))) {
            return ('Password must be at least 7 characters\n and contain one capital letter');
          }
        }
        return null;
      },
    );
  }
}
