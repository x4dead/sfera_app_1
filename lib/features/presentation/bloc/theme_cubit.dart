import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sfera_app_1/themes/colors/colors.dart';

class ThemeCubit extends Cubit<ThemeStates> {
  ThemeCubit()
      : super(ThemeStates(
            theme: appThemeData[AppTheme.lightTheme] ?? ThemeData.dark()));

  void changeTheme() {
    if (state.theme == appThemeData[AppTheme.lightTheme]) {
      final updateState = ThemeStates(
          theme: appThemeData[AppTheme.darkTheme] ?? ThemeData.light());
      emit(updateState);
    } else {
      final updateState = ThemeStates(
          theme: appThemeData[AppTheme.lightTheme] ?? ThemeData.dark());
      emit(updateState);
    }
  }
}

class ThemeStates {
  final ThemeData theme;

  ThemeStates({required this.theme});
}

enum AppTheme {
  darkTheme,
  lightTheme,
}

final appThemeData = {
  AppTheme.darkTheme: ThemeData(
    scaffoldBackgroundColor: Colors.grey.shade900,
    colorScheme: const ColorScheme.dark(),
  ),
  AppTheme.lightTheme: ThemeData(
    scaffoldBackgroundColor: AppColors.colorGrey,
  )
};
