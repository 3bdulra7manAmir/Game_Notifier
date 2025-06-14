import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppPadding
{
  AppPadding._();
  static final all = PaddingAll._();
  static final symmetric = PaddingSymmetric._();
  static final directional = PaddingDirectional._();
  static final single = PaddingSingle._();
  static final special = PaddingSpecial._();
}

/// [_all_]
class PaddingAll
{
  PaddingAll._();

  /// 5px all sides
  EdgeInsets get xxSmallAll => const EdgeInsets.all(5); // xxSmallAll

  /// 10px all sides
  EdgeInsets get smallAll => const EdgeInsets.all(10); // smallAll
}

/// [_symmetric_]
class PaddingSymmetric
{
  PaddingSymmetric._();

  /// 10px horizontal
  EdgeInsets get smallHorizontal => EdgeInsets.symmetric(horizontal: 10.w);

  /// 16px horizontal
  EdgeInsets get largeHorizontal => EdgeInsets.symmetric(horizontal: 16.w);

  /// 18px horizontal
  EdgeInsets get xLargeHorizontal => EdgeInsets.symmetric(horizontal: 18.w);

  /// 12px vertical
  EdgeInsets get mediumVertical => EdgeInsets.symmetric(vertical: 12.w);

  /// 16px all symmetric
  EdgeInsets get mediumAllSymmetric => EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.w);
}

/// [_directional_]
class PaddingDirectional
{
  PaddingDirectional._();
  
}

/// [_single_]
class PaddingSingle
{
  PaddingSingle._();

}

/// [_special_]
class PaddingSpecial
{
  PaddingSpecial._();

  /// Zero padding
  final EdgeInsets zero = EdgeInsets.zero;
}
