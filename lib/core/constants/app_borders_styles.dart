import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../config/themes/color_system/color_switcher.dart';

/// App-wide border widths using responsive units
abstract class AppBorderWidths
{
  AppBorderWidths._();

  /// [xsmall] → 1px
  static double get xsmall => 1.0.w;

  /// [medium] → 2px
  static double get medium => 2.0.w;
}

/// Full border definitions for different use cases
abstract class AppFullBorders
{
  AppFullBorders._();

  /// [xxsmallGrey] → Thin grey border
  static BoxBorder get xxsmallGrey => Border.all(
    color: AppColors.color.kGrey001,
    width: AppBorderWidths.xsmall,
  );
}

/// Standard box border utility
abstract class AppBoxBorders
{
  AppBoxBorders._();

  /// [xsmallGrey] → Default standard border
  static BoxBorder get xsmallGrey => Border.all(
    color: AppColors.color.kGrey001,
    width: AppBorderWidths.xsmall,
  );
}
