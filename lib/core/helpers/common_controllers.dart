import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../config/themes/color_system/controller/theme_controller.dart';
import '../services/localization/controller/localization_controller.dart';

class CommonProviders
{
  CommonProviders(this.ref, this.context);
  final WidgetRef ref;
  final BuildContext context;

  // 🌍 Localization
  LocalizationController get localeControllerReader => ref.read(localizationControllerProvider.notifier);
  LocalizationController get localeControllerWatcher => ref.watch(localizationControllerProvider.notifier);
  Locale get currentLocale => ref.watch(localizationControllerProvider);

  // Theme
  ThemeMode get currentThemeMode => ref.watch(themeControllerProvider);

  
}