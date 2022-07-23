import 'package:flutter/material.dart';

const MaterialColor customSwatch = MaterialColor(
  0xFFFF9526,
  <int, Color>{
    50: Color(0xFFFFF0E0),
    100: Color(0xFFFFDAB3),
    200: Color(0xFFFFC180),
    300: Color(0xFFFFA84D),
    400: Color(0xFFFF9526),
    500: Color(0xFFFF8200),
    600: Color(0xFFFF7A00),
    700: Color(0xFFFF6F00),
    800: Color(0xFFFF6500),
    900: Color(0xFFFF5200),
  },
);

class MyTheme extends ChangeNotifier {
  ThemeData current = ThemeData(
    primarySwatch: customSwatch,
    primaryColor: customSwatch,
    splashFactory: NoSplash.splashFactory,
  );

  bool _isDark = false;
  bool get isDark => _isDark;
  set isDark(bool isDark) {
    _isDark = isDark;
    toggle();
  }

  toggle() {
    current = _isDark
        ? ThemeData(
            brightness: Brightness.dark,
            primarySwatch: customSwatch,
            primaryColor: customSwatch,
            splashFactory: NoSplash.splashFactory,
          )
        : ThemeData(
            primarySwatch: customSwatch,
            primaryColor: customSwatch,
            splashFactory: NoSplash.splashFactory,
          );
    notifyListeners();
  }
}
