﻿import 'package:flutter/material.dart';
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
    this.inputFormatters,
  }) : super(key: key);
  final String text;
  final int? maxLength;
  final Widget? suffix;
  final bool? obscureText;
  final IconData? icon;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final RegExp? inputFormatters;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      inputFormatters: [
        FilteringTextInputFormatter.allow(inputFormatters ?? ''),
      ],
      obscureText: obscureText ?? false,
      maxLength: maxLength,
      controller: controller,
      validator: validator,
      style: Theme.of(context)
          .textTheme
          .titleMedium
          ?.copyWith(color: AppColors.color000000.withOpacity(0.85)),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.zero,
        counterText: '',
        hintText: '$text:',
        hintStyle: TextStyle(color: AppColors.color000000.withOpacity(0.7)),
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
          borderSide: BorderSide(color: Theme.of(context).errorColor),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: Theme.of(context).errorColor),
        ),
      ),
    );
  }
}
