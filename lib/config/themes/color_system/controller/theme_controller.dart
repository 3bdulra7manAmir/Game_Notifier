import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/services/database/shared_preference/app_database.dart';
import '../color_switcher.dart';

part 'theme_controller.g.dart';

/// Indexed themes to store in SharedPreferences
enum AppTheme
{
  light, dark;

  /// Convert index to AppTheme
  static AppTheme fromIndex(int index)
  {
    return AppTheme.values[index.clamp(0, AppTheme.values.length - 1)];
  }

  ThemeMode get mode => this == AppTheme.dark ? ThemeMode.dark : ThemeMode.light; /// Convert AppTheme to ThemeMode
  int get indexValue => index; /// Get index for SharedPreferences
}

@riverpod
class ThemeController extends _$ThemeController
{
  bool _isChanging = false;

  @override
  ThemeMode build()
  {
    Future.microtask(() => _loadSavedTheme()); // Load theme async after first frame
    AppColors.i.themeMode = 'light'; // Temporary fallback
    return ThemeMode.light;
  }

  Future<void> _loadSavedTheme() async
  {
    try
    {
      final prefs = UserPreferences.instance;
      final index = await prefs.getThemeIndex(); // Get stored index
      final appTheme = AppTheme.fromIndex(index);
      state = appTheme.mode;
      AppColors.i.themeMode = appTheme.name;
      log('[ThemeController] Loaded theme index: $index (${appTheme.name})');
    }
    catch (e, s)
    {
      log('[ThemeController] Error loading theme: $e\n$s');
      state = ThemeMode.light;
      AppColors.i.themeMode = 'light';
    }
  }

  Future<void> setTheme(AppTheme theme) async
  {
    if (_isChanging) return;

    _isChanging = true;
    try
    {
      final prefs = UserPreferences.instance;
      await prefs.saveThemeIndex(theme.indexValue); // Save index instead of bool
      state = theme.mode;
      AppColors.i.themeMode = theme.name;
      log('[ThemeController] Set theme: ${theme.name} (index: ${theme.indexValue})');
    }
    catch (e, s)
    {
      log('[ThemeController] Error setting theme: $e\n$s');
      state = ThemeMode.light;
      AppColors.i.themeMode = 'light';
    }
    finally
    {
      _isChanging = false;
    }
  }

  void setThemeFromIndex(int index)
  {
    final appTheme = AppTheme.fromIndex(index);
    setTheme(appTheme);
  }
}
