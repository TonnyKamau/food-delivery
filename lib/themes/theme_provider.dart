import 'package:flutter/material.dart';
import 'package:food_delivery/themes/dark_mode.dart';
import 'package:food_delivery/themes/light_mode.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = lightMode;
  ThemeData get themeData => _themeData;
  bool get isDarkMode => _themeData == darkMode;

  // Key for storing theme mode in shared preferences
  static const String _themeModeKey = 'theme_mode';

  // Constructor
  ThemeProvider() {
    // Load theme mode from shared preferences when the app starts
    _loadThemeMode();
  }

  // Load saved theme mode from shared preferences
  Future<void> _loadThemeMode() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? isDark = prefs.getBool(_themeModeKey);
    if (isDark != null && isDark) {
      _themeData = darkMode;
    }
    // Notify listeners after loading the theme mode
    notifyListeners();
  }

  // Save current theme mode to shared preferences
  Future<void> _saveThemeMode(bool isDark) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_themeModeKey, isDark);
  }

  // Set theme data and save theme mode to shared preferences
  set themeData(ThemeData themeData) {
    _themeData = themeData;
    // Save theme mode to shared preferences
    _saveThemeMode(_themeData == darkMode);
    // Notify listeners after updating the theme
    notifyListeners();
  }

  // Toggle theme between light and dark modes
  void toggleTheme() {
    if (_themeData == lightMode) {
      _themeData = darkMode;
    } else {
      _themeData = lightMode;
    }
    // Save theme mode to shared preferences
    _saveThemeMode(_themeData == darkMode);
    // Notify listeners after updating the theme
    notifyListeners();
  }
}
