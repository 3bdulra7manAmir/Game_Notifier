import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppBordersRadiuses
{
  AppBordersRadiuses._();

  static final top = BorderTopOnly._();
  static final circular = BorderCircular._();
}

class BorderTopOnly
{
  BorderTopOnly._();

  /// [topSmall] → 10px top radius
  BorderRadiusGeometry get small => BorderRadius.only(
    topLeft: Radius.circular(10.r),
    topRight: Radius.circular(10.r),
  );

  /// [topXLarge] → 20px top radius
  BorderRadiusGeometry get xlarge => BorderRadius.only(
    topLeft: Radius.circular(20.r),
    topRight: Radius.circular(20.r),
  );
}

class BorderCircular
{
  BorderCircular._();

  /// [xxsmall] → 1px
  BorderRadius get xxsmall => BorderRadius.circular(1.r);

  /// [xsmall] → 4px
  BorderRadius get xsmall => BorderRadius.circular(4.r);

  /// [small] → 5px
  BorderRadius get small => BorderRadius.circular(5.r);

  /// [smallPlus] → 6px
  BorderRadius get smallPlus => BorderRadius.circular(6.r);

  /// [medium] → 7px
  BorderRadius get medium => BorderRadius.circular(7.r);

  /// [mediumPlus] → 8px
  BorderRadius get mediumPlus => BorderRadius.circular(8.r);

  /// [large] → 10px
  BorderRadius get large => BorderRadius.circular(10.r);

  /// [xlarge] → 12px
  BorderRadius get xlarge => BorderRadius.circular(12.r);

  /// [xxlarge] → 20px
  BorderRadius get xxlarge => BorderRadius.circular(20.r);

  /// [xxxlarge] → 50px
  BorderRadius get xxxlarge => BorderRadius.circular(50.r);

  /// [full] → 100px
  BorderRadius get full => BorderRadius.circular(100.r);
}
