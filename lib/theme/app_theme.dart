import 'package:flutter/material.dart';

class AppTheme {
  // Color primario
  static const Color primary = Colors.indigo;

  // AppBar Theme
  static final ThemeData lightTheme = ThemeData.light().copyWith(
      primaryColor: primary,
      appBarTheme: const AppBarTheme(color: primary, elevation: 0),

      // TextButton
      textButtonTheme:
          TextButtonThemeData(style: TextButton.styleFrom(primary: primary)),

      // FloatingActionButton
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: primary, elevation: 5),

      // ElevatedButton
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.indigo,
          shape: const StadiumBorder(),
          elevation: 0,
      )));

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      primaryColor: primary,
      appBarTheme: const AppBarTheme(color: primary, elevation: 0),
      scaffoldBackgroundColor: Colors.black);
}
