import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../core/constants/app_borders.dart';
import '../../../core/constants/app_borders_styles.dart';
import '../../../core/constants/app_styles.dart';
import '../color_system/color_switcher.dart';
import '../font_system/font_weights.dart';

abstract class AppLightStyles
{
  AppLightStyles._();

  static InputBorder get inputBorderLight => OutlineInputBorder(
    borderRadius: AppBordersRadiuses.circular.large,
    borderSide: BorderSide(color: AppColors.color.kGrey001, width: AppBorderWidths.xsmall,),
  );

  static ElevatedButtonThemeData get elevatedButtonTheme => ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all<Color>(AppColors.color.kBlue001),
      overlayColor: WidgetStateProperty.all<Color>(Colors.transparent),
      shadowColor: WidgetStateProperty.all<Color>(Colors.transparent),
      elevation: WidgetStateProperty.all(0),
      splashFactory: NoSplash.splashFactory,
      alignment: Alignment.center,
      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: AppBordersRadiuses.circular.large,
          side: BorderSide(color: AppColors.color.kTransparent, width: AppBorderWidths.xsmall,),
        ),
      ),
    ),
  );

  static TabBarThemeData get tabBarTheme => TabBarThemeData(
    unselectedLabelColor: AppColors.color.kGreyText002,
    indicatorColor: AppColors.color.kOrange001,
    indicatorSize: TabBarIndicatorSize.tab,
    labelColor: AppColors.color.kOrange001,
    labelStyle: AppFontStyles.textStyle14(fontWeight: AppFontWeights.semiBoldWeight, fontColor: AppColors.color.kOrange001,),
  );

  static NoDefaultCupertinoThemeData get cupertinoLightOverrideTheme => CupertinoThemeData(
    textTheme: CupertinoTextThemeData(pickerTextStyle: AppFontStyles.textStyle26(),),
  );
}


abstract class AppDarkStyles
{
  AppDarkStyles._();

  static InputBorder get inputBorderLight => OutlineInputBorder(
    borderRadius: AppBordersRadiuses.circular.large,
    borderSide: BorderSide(color: AppColors.color.kGrey001, width: AppBorderWidths.xsmall,),
  );

  static InputBorder get inputBorderDark => OutlineInputBorder(
    borderRadius: AppBordersRadiuses.circular.large,
    borderSide: BorderSide(color: AppColors.color.kDark001, width: AppBorderWidths.xsmall,),
  );

  static ElevatedButtonThemeData get elevatedButtonTheme => ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all<Color>(AppColors.color.kBlue001),
      overlayColor: WidgetStateProperty.all<Color>(Colors.transparent),
      shadowColor: WidgetStateProperty.all<Color>(Colors.transparent),
      elevation: WidgetStateProperty.all(0),
      splashFactory: NoSplash.splashFactory,
      alignment: Alignment.center,
      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: AppBordersRadiuses.circular.large,
          side: BorderSide(color: AppColors.color.kTransparent, width: AppBorderWidths.xsmall,),
        ),
      ),
    ),
  );

  static TabBarThemeData get tabBarTheme => TabBarThemeData(
    unselectedLabelColor: AppColors.color.kGreyText002,
    indicatorColor: AppColors.color.kOrange001,
    indicatorSize: TabBarIndicatorSize.tab,
    labelColor: AppColors.color.kOrange001,
    labelStyle: AppFontStyles.textStyle14(fontWeight: AppFontWeights.semiBoldWeight, fontColor: AppColors.color.kOrange001,),
  );

  static NoDefaultCupertinoThemeData get cupertinoDarkOverrideTheme => CupertinoThemeData(
    textTheme: CupertinoTextThemeData(pickerTextStyle: AppFontStyles.textStyle12(fontColor: AppColors.color.kWhite003,),),
  );
}
