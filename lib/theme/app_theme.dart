import 'package:flutter/material.dart';

class AppTheme {
  // Color primario
  static const Color primary = Colors.indigo;
  
  // AppBar Theme
  static final ThemeData lightTheme = ThemeData.light().copyWith(
      primaryColor: primary,
      appBarTheme: const AppBarTheme(color: primary, elevation: 0),
      
      // TextButton Theme
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(primary: primary)
      )
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      primaryColor: primary,
      appBarTheme: const AppBarTheme(color: primary, elevation: 0),
      scaffoldBackgroundColor: Colors.black
  );  

}
