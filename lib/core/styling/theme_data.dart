import 'package:flutter/material.dart';
import 'package:movie_app/core/styling/app_colors.dart';
import 'package:movie_app/core/styling/app_fonts.dart';
import 'package:movie_app/core/styling/app_styles.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    primaryColor: AppColors.backgroundColor,
    scaffoldBackgroundColor: AppColors.primaryColor,
    fontFamily: AppFonts.mainFontName,
    textTheme: TextTheme(
      titleLarge: AppStyles.primaryMeadLineStyle,
      titleMedium: AppStyles.subtitleStyle,
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: AppColors.backgroundColor,
      disabledColor: AppColors.greyColor,
    ),
  );
}
