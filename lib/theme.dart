import 'package:flutter/material.dart';

const MaterialColor customSwatch = MaterialColor(
  0xFFBA7B98,
  <int, Color>{
    50: Color(0xFFFAF4F7),
    100: Color(0xFFF2E4EB),
    200: Color(0xFFEAD3DE),
    300: Color(0xFFE2C1D1),
    400: Color(0xFFDBB3C7),
    500: Color(0xFFD5A6BD),
    600: Color(0xFFD09EB7),
    700: Color(0xFFCA95AE),
    800: Color(0xFFC48BA6),
    900: Color(0xFFBA7B98),
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
