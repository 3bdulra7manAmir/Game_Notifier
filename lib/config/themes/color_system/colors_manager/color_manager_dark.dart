import 'package:flutter/material.dart';
import 'color_manager_base.dart';

class DarkColorScheme extends ColorManagerBase
{
  @override
  /// [Transparent]
  Color get kTransparent => Colors.transparent; // kTransparent

  // Blue Color Range
  @override
  /// [Blue_001__003082]
  Color get kBlue001 => const Color(0xff003082); // kBlue001

  @override
  /// [Blue_002__1963D6]
  Color get kBlue002 => const Color(0xff1963D6); // kBlue005

  // White Color Range
  @override
  /// [White_001__FFFFFF]
  Color get kWhite001 => const Color(0xffFFFFFF); // kWhite001

  @override
  /// [White_002__F4F4F4]
  Color get kWhite002 => const Color(0xffF4F4F4); // kWhite002

  @override
  /// [Grey_001__F8F8F8]
  Color get kGrey001 => const Color(0xffF8F8F8); // kGrey001

  @override
  /// [Grey_002__9E9E9E]
  Color get kGrey002 => const Color(0xff9E9E9E); // kGrey002

  // Black Color Range
  @override
  /// [Black_001__000000]
  Color get kBlack001 => const Color(0xff000000); // kBlack001

  @override
  /// [Black_002__232633]
  Color get kBlack002 => const Color(0xff232633); // kBlack002

  // Orange Color Range
  @override
  /// [Orange_001__FF7D00]
  Color get kOrange001 => const Color(0xffFF7D00); // kOrange001

  // Cyan Color Range
  @override
  /// [Cyan_001__87D1E5]
  Color get kCyan001 => const Color(0xff87D1E5); // kCyan001
}