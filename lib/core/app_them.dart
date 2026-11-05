import 'package:flutter/material.dart';
import 'package:space/core/app_color.dart';

abstract class AppTheme {
  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.black,
    textTheme: TextTheme(
      titleSmall: TextStyle(
        color: AppColors.white,
        fontWeight: .w700,
        fontSize: 16,
        fontFamily: "SpaceGrotesk"
      ), 
      headlineSmall: TextStyle(
        color: AppColors.white,
        fontWeight: .bold,
        fontSize: 24,
        fontFamily: "SpaceGrotesk"
      ), //24
      titleMedium: TextStyle(color: AppColors.white, fontSize: 16), //16
      titleLarge: TextStyle(
        color: AppColors.white,
        fontWeight: .w600,
        fontSize: 20,
        fontFamily: "SpaceGrotesk"
      ), //20
      headlineLarge: TextStyle(
        fontWeight: .w900,
        fontSize: 48,
        color: AppColors.white,
        fontFamily: "SpaceGrotesk"
      ),
    ),
  );
}
