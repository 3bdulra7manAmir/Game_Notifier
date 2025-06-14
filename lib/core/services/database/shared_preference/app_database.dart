import 'dart:developer';
import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences
{
  UserPreferences._();
  static final UserPreferences instance = UserPreferences._();

  static const _langKey = 'lang_index';
  static const _themeKey = 'theme_index';
  static const _countryKey = 'country_index';

  static const int _defaultLangIndex = 0;    // 0 = English
  static const int _defaultThemeIndex = 0;   // 0 = Light
  static const int _defaultCountryIndex = 0; // 0 = US
  

  SharedPreferences? _prefs;

  Future<void> init() async
  {
    try
    {
      _prefs ??= await SharedPreferences.getInstance();
      log('UserPreferences initialized');
    }
    catch (e)
    {
      log('Error initializing preferences: $e');
    }
  }

  Future<SharedPreferences> get _preferences async
  {
    try
    {
      _prefs ??= await SharedPreferences.getInstance();
      return _prefs!;
    }
    catch (e)
    {
      log('Error getting preferences: $e');
      rethrow;
    }
  }

  // ========== Language ==========
  Future<void> saveLanguageIndex(int index) async
  {
    try
    {
      final prefs = await _preferences;
      await prefs.setInt(_langKey, index);
      log('Saved language index: $index');
    }
    catch (e)
    {
      log('Error saving language index: $e');
    }
  }

  Future<int> getLanguageIndex() async
  {
    try
    {
      final prefs = await _preferences;
      return prefs.getInt(_langKey) ?? _defaultLangIndex;
    }
    catch (e)
    {
      log('Error getting language index: $e');
      return _defaultLangIndex;
    }
  }

  // ========== Country ==========
  Future<void> saveCountryIndex(int index) async
  {
    try
    {
      final prefs = await _preferences;
      await prefs.setInt(_countryKey, index);
      log('Saved country index: $index');
    }
    catch (e)
    {
      log('Error saving country index: $e');
    }
  }

  Future<int> getCountryIndex() async
  {
    try
    {
      final prefs = await _preferences;
      return prefs.getInt(_countryKey) ?? _defaultCountryIndex;
    }
    catch (e)
    {
      log('Error getting country index: $e');
      return _defaultCountryIndex;
    }
  }

  // ========== Theme ==========
  Future<void> saveThemeIndex(int index) async
  {
    try
    {
      final prefs = await _preferences;
      await prefs.setInt(_themeKey, index);
      log('Saved theme index: $index');
    }
    catch (e)
    {
      log('Error saving theme index: $e');
    }
  }

  Future<int> getThemeIndex() async
  {
    try
    {
      final prefs = await _preferences;
      return prefs.getInt(_themeKey) ?? _defaultThemeIndex;
    }
    catch (e)
    {
      log('Error getting theme index: $e');
      return _defaultThemeIndex;
    }
  }

  // ========== Clear All ==========
  Future<void> clearAll() async
  {
    try
    {
      final prefs = await _preferences;
      await prefs.clear();
      log('Cleared all preferences');
    }
    catch (e)
    {
      log('Error clearing preferences: $e');
    }
  }
}
