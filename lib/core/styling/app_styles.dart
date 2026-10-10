import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/core/styling/app_colors.dart';
import 'package:movie_app/core/styling/app_fonts.dart';

class AppStyles {
  static TextStyle font18whitesemibold = TextStyle(
    fontFamily: AppFonts.mainFontName,
    fontSize: 18.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.primaryColor,
  );

 static TextStyle font16whitesemibold = TextStyle(
    fontFamily: AppFonts.mainFontName,
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.primaryColor,
  );

  static TextStyle font12greymedium = TextStyle(
    fontFamily: AppFonts.mainFontName,
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.greyColor,
  );

  static TextStyle grey12wMediumStyle = TextStyle(
    fontFamily: AppFonts.mainFontName,
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.greyColor,
  );

  static TextStyle background = TextStyle(
    fontFamily: AppFonts.mainFontName,
    fontSize: 17.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.backgroundColor,
  );
  static TextStyle black18boldStyle = TextStyle(
    fontFamily: AppFonts.mainFontName,
    fontSize: 28.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.balckColor,
  );
}
