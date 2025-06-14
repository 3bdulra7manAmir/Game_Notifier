import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import '../../config/router/app_router.dart';

class CustomAppBar extends ConsumerWidget implements PreferredSizeWidget
{
  const CustomAppBar({
    super.key,
    this.barLeading,
    this.barLeadingWidth,    
    this.barTitle,
    this.barActions,
    this.barActionsPadding,
  });

  final Widget? barLeading;
  final double? barLeadingWidth;
  final Widget? barTitle;
  final List<Widget>? barActions;
  final EdgeInsetsGeometry? barActionsPadding;


  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    return AppBar(
      leading: GestureDetector(
        onTap: () => AppRouter.router.pop(),
        child: barLeading,
      ),
      leadingWidth: barLeadingWidth,
      title: barTitle,
      actions: barActions,
      actionsPadding: barActionsPadding,
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
