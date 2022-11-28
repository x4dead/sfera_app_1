import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
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

  static TextStyle oswald = GoogleFonts.oswald();

  static const TextStyle w400s14 = TextStyle();

  static const TextStyle w400s20 = TextStyle(fontSize: 20);
}
