import 'package:flutter/material.dart';
import 'package:iaenglish/core/themes/colors/abstract.dart';
import 'package:iaenglish/core/themes/colors/dark_app.dart';
import 'package:iaenglish/core/themes/colors/light_app.dart';

enum AppTheme { light, dark }

class ThemeProvider with ChangeNotifier {
  AppTheme _theme = AppTheme.light; 
 
  AppTheme get theme => _theme;

  bool get isDark => _theme == AppTheme.dark;

  BaseColors get colors => _theme == AppTheme.dark ? DarkColors() : LightColors();

  void toggleTheme() {
    _theme = _theme == AppTheme.light ? AppTheme.dark : AppTheme.light;
    notifyListeners();
  }
}

