import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.light;

  bool get isLight => _themeMode == ThemeMode.light;
  ThemeMode get theme => _themeMode;

  void setTheme(ThemeMode themeMode) {
    _themeMode = themeMode;
    print(_themeMode);
    notifyListeners();
  }
}
