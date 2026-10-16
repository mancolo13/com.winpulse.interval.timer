import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Color(0xFFEF4444);
  static const Color secondaryColor = Color(0xFFFCA5A5);
  static const Color backgroundColor = Color(0xFF0E0E12);
  static const Color surfaceColor = Color(0xFF1A1A24);

  static ThemeData get darkTheme => ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: backgroundColor,
    colorScheme: const ColorScheme.dark(
      primary: primaryColor,
      secondary: secondaryColor,
      surface: surfaceColor,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: surfaceColor,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
    ),
  );
}
