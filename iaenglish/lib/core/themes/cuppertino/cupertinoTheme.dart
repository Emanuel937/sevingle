import 'package:flutter/cupertino.dart';
import 'package:iaenglish/core/themes/provider/themeProvide.dart';

CupertinoThemeData setTheme({required ThemeProvider themeProvider}) {
  return CupertinoThemeData(
    scaffoldBackgroundColor: themeProvider.colors.scaffoldPageBackground,
    brightness: themeProvider.isDark ? Brightness.dark : Brightness.light,
  );
}
