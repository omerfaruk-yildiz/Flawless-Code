import 'package:flutter/material.dart';
import "package:google_fonts/google_fonts.dart";

class ThemeProvider with ChangeNotifier {
  bool _isDark = true;
  bool get isDark => _isDark;

  void toggleTheme() {
    _isDark = !_isDark;
    notifyListeners();
  }
}

const darkColors = {
  "primary": Color(0xFF1C1C1C),
  "onPrimary": Colors.white,
  "secondary": Color(0xFF000A12),
  "onSecondary": Color(0xFFB0BEC5),
  "background": Color(0xFF121212),
  "onBackground": Colors.white,
  "surface": Color(0xFF2C2C2C),
  "onSurface": Colors.white,
  "error": Colors.red,
  "onError": Colors.white,
};

const lightColors = {
  "primary": Color(0xFFB0BEC5),
  "onPrimary": Color(0xFF212121),
  "secondary": Color(0xFFBBDEFB),
  "onSecondary": Color(0xFF0D47A1),
  "background": Color(0xFFFFFFFF),
  "onBackground": Color(0xFF000000),
  "surface": Color(0xFFF1F1F1),
  "onSurface": Color(0xFF000000),
  "error": Color(0xFFD32F2F),
  "onError": Color(0xFFFFFFFF),
};

final darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    primary: darkColors["primary"]!,
    onPrimary: darkColors["onPrimary"]!,
    secondary: darkColors["secondary"]!,
    onSecondary: darkColors["onSecondary"]!,
    background: darkColors["background"]!,
    onBackground: darkColors["onBackground"]!,
    surface: darkColors["surface"]!,
    onSurface: darkColors["onSurface"]!,
    error: darkColors["error"]!,
    onError: darkColors["onError"]!,
  ),
  textTheme: GoogleFonts.robotoTextTheme().apply(
    bodyColor: darkColors["onSurface"],
    displayColor: darkColors["onSurface"],
  ),
);

final lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    primary: lightColors["primary"]!,
    onPrimary: lightColors["onPrimary"]!,
    secondary: lightColors["secondary"]!,
    onSecondary: lightColors["onSecondary"]!,
    background: lightColors["background"]!,
    onBackground: lightColors["onBackground"]!,
    surface: lightColors["surface"]!,
    onSurface: lightColors["onSurface"]!,
    error: lightColors["error"]!,
    onError: lightColors["onError"]!,
  ),
  textTheme: GoogleFonts.robotoTextTheme().apply(
    bodyColor: lightColors["onSurface"],
    displayColor: lightColors["onSurface"],
  ),
);
