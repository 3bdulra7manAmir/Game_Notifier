import 'package:device_preview/device_preview.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:free_game_notifier/config/themes/themes_manager/app_themes.dart';

import 'config/l10n/generated/app_localizations.dart';
import 'config/router/app_router.dart';
import 'core/helpers/common_controllers.dart';

class FreeGameNotifier extends ConsumerWidget
{
  const FreeGameNotifier({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    /// Providers
    final provider = CommonProviders(ref, context);
    return DevicePreview(
      enabled: false,
      builder: (context) => 
      ScreenUtilInit(
        designSize: const Size(390, 844),
        builder: (context, child) =>
        MaterialApp.router(
          debugShowCheckedModeBanner: false,
          /// Router
          routerConfig: AppRouter.router,
          /// Localiztion   
          locale: provider.currentLocale,
          supportedLocales: AppLocalizations.supportedLocales,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          /// Theming
          themeMode: provider.currentThemeMode,
          theme: AppTheme.lightTheme(),
          darkTheme: AppTheme.darkTheme(),
        ),
      ),
    );
  }
}
