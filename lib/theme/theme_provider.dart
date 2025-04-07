import 'package:flutter/material.dart';
import 'package:simple_music_player/theme/dark_theme.dart';
import 'package:simple_music_player/theme/light_theme.dart';

class ThemeProvider extends ChangeNotifier {
  // initially ,light mode
  ThemeData _themeData = lightMode;

  // get theme
  ThemeData get themeData => _themeData;

  // change to dark mode
  bool get isDarkMode => _themeData == darkMode;

  // set theme
  set themeData(ThemeData themeData) {
    _themeData = themeData;
    // update UI
    notifyListeners();
  }

  toggleTheme() {
    if (_themeData == lightMode) {
      themeData = darkMode;
    } else {
      themeData = lightMode;
    }
  }
}
