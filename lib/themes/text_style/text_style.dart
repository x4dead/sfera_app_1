import 'package:flutter/cupertino.dart';
import '../colors/colors.dart';

abstract class AppTextStyle {
  static const TextStyle wBolds20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: AppColors.colorFFFFFF,
  );
  static const TextStyle wBolds = TextStyle(
    fontWeight: FontWeight.bold,
  );
}
