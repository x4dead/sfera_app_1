import 'package:flutter/cupertino.dart';
import '../colors/colors.dart';

abstract class AppTextStyle {
  static const TextStyle w600s64 = TextStyle(
    fontSize: 64,
    fontWeight: FontWeight.w600,
    color: AppColors.colorFFFFFF,
  );

  static const TextStyle w300s24 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w300,
    color: AppColors.colorFFFFFF,
  );
  static const TextStyle w200s20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w200,
    color: AppColors.colorFFFFFF,
  );
}
