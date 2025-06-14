import 'package:flutter/material.dart';
import 'app_themes_styles.dart';
import '../color_system/color_switcher.dart';

class AppTheme
{
  AppTheme._();

  static ThemeData lightTheme()
  {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      scaffoldBackgroundColor: AppColors.color.kWhite001,
      cardColor: AppColors.color.kWhite001,

      inputDecorationTheme: InputDecorationTheme(
        fillColor: AppColors.color.kGrey001,
        focusedBorder: AppLightStyles.inputBorderLight,
        enabledBorder: AppLightStyles.inputBorderLight,
        errorBorder: AppLightStyles.inputBorderLight,
        disabledBorder: AppLightStyles.inputBorderLight,
        filled: true,
      ),

      elevatedButtonTheme: AppLightStyles.elevatedButtonTheme,
      tabBarTheme: AppLightStyles.tabBarTheme,
      appBarTheme: AppBarTheme(backgroundColor: AppColors.color.kGrey002, centerTitle: true,),

      cupertinoOverrideTheme: AppLightStyles.cupertinoLightOverrideTheme
    );
  }

  static ThemeData darkTheme()
  {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: AppColors.color.kBlack002,
      cardColor: AppColors.color.kBlack002,

      inputDecorationTheme: InputDecorationTheme(
        fillColor: AppColors.color.kBlack001,
        focusedBorder: AppDarkStyles.inputBorderDark,
        enabledBorder: AppDarkStyles.inputBorderDark,
        errorBorder: AppDarkStyles.inputBorderDark,
        disabledBorder: AppDarkStyles.inputBorderDark,
        filled: true,
      ),

      elevatedButtonTheme: AppDarkStyles.elevatedButtonTheme,
      tabBarTheme: AppDarkStyles.tabBarTheme,
      appBarTheme: AppBarTheme(backgroundColor: AppColors.color.kGrey002, centerTitle: true,),

    cupertinoOverrideTheme: AppDarkStyles.cupertinoDarkOverrideTheme
    );
  }
}

