import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier {
  static const String _themeKey = "theme_mode";

  final SharedPreferences prefs;
  late ThemeMode _themeMode;

  ThemeProvider(this.prefs) {
    _loadTheme();
  }

  ThemeMode get themeMode => _themeMode;

  bool get isLightMode => _themeMode == ThemeMode.light;

  bool get isDarkMode => _themeMode == ThemeMode.dark;

  bool get isSystemMode => _themeMode == ThemeMode.system;

  void _loadTheme() {
    final savedTheme = prefs.getString(_themeKey);

    switch (savedTheme) {
      case "light":
        _themeMode = ThemeMode.light;
        break;

      case "dark":
        _themeMode = ThemeMode.dark;
        break;

      default:
        _themeMode = ThemeMode.system;
    }
  }

  Future<void> _saveTheme() async {
    String value;

    switch (_themeMode) {
      case ThemeMode.light:
        value = "light";
        break;

      case ThemeMode.dark:
        value = "dark";
        break;

      case ThemeMode.system:
        value = "system";
        break;
    }

    await prefs.setString(_themeKey, value);
  }

  Future<void> setLightMode() async {
    _themeMode = ThemeMode.light;
    await _saveTheme();
    notifyListeners();
  }

  Future<void> setDarkMode() async {
    _themeMode = ThemeMode.dark;
    await _saveTheme();
    notifyListeners();
  }

  Future<void> setSystemMode() async {
    _themeMode = ThemeMode.system;
    await _saveTheme();
    notifyListeners();
  }

  Future<void> setThemeMode(ThemeMode mode) async {
    _themeMode = mode;
    await _saveTheme();
    notifyListeners();
  }

  Future<void> toggleTheme() async {
    if (_themeMode == ThemeMode.dark) {
      _themeMode = ThemeMode.light;
    } else {
      _themeMode = ThemeMode.dark;
    }

    await _saveTheme();

    notifyListeners();
  }
}
