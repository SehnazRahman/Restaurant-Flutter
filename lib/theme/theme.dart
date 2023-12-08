import 'package:flutter/material.dart';
import 'package:restaurant/theme/customTheme/txtDecoration.dart';

class DecorationTheme {

  static ThemeData lightTheme = ThemeData (
    useMaterial3: false,
    textTheme: TxtDecoration.lightTextTheme,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(),


  );
}