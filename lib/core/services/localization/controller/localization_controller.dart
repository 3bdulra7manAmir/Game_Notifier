import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../database/shared_preference/app_database.dart';

part 'localization_controller.g.dart';

@riverpod
class LocalizationController extends _$LocalizationController
{
  int selectedLanguageIndex = 0; // Default: 0 => English
  bool _isChanging = false;

  static const List<String> _languageCodes = ['en', 'ar'];

  @override
  Locale build()
  {
    Future.microtask(loadLocale); // Async safe call
    return Locale(_languageCodes[selectedLanguageIndex]);
  }

  Future<void> loadLocale() async
  {
    try
    {
      final index = await UserPreferences.instance.getLanguageIndex();
      selectedLanguageIndex = (index >= 0 && index < _languageCodes.length) ? index : 0;
      state = Locale(_languageCodes[selectedLanguageIndex]);
      log('[Localization] Loaded language index: $selectedLanguageIndex');
    }
    catch (e)
    {
      log('[Localization] Failed to load language: $e');
      selectedLanguageIndex = 0;
      state = Locale(_languageCodes[selectedLanguageIndex]);
    }
  }

  Future<void> setLocaleByIndex(int index) async
  {
    if (_isChanging || index < 0 || index >= _languageCodes.length) return;
    _isChanging = true;

    try
    {
      final code = _languageCodes[index];
      await UserPreferences.instance.saveLanguageIndex(index);
      selectedLanguageIndex = index;
      state = Locale(code);
      log('[Localization] Set language to: $code (index: $index)');
    }
    catch (e)
    {
      log('[Localization] Failed to set language: $e');
      selectedLanguageIndex = 0;
      state = Locale(_languageCodes[selectedLanguageIndex]);
    }
    finally
    {
      _isChanging = false;
    }
  }

  /// Helper method if you still want to support language code
  Future<void> setLocaleFromCode(String code) async
  {
    final index = _languageCodes.indexOf(code.toLowerCase());
    await setLocaleByIndex(index >= 0 ? index : 0);
  }
}
