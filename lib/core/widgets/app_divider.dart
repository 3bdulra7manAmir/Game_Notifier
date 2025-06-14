import 'package:flutter/material.dart';
import '../../config/themes/color_system/color_switcher.dart';
import '../constants/app_sizes.dart';

class AppDivider extends StatelessWidget
{
  const AppDivider({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Divider(
      color: AppColors.color.kGrey002, 
      thickness: AppSizes.size1,
      indent: AppSizes.size15,
      endIndent: AppSizes.size15,
    );
  }
}