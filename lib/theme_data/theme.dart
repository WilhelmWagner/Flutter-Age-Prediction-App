import 'package:flutter/material.dart';

import '../constants/constants.dart';

final kLightTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  colorSchemeSeed: lightPrimary,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: kWhite,
      backgroundColor: kRed,
      elevation: 0,
      //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      //padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: BorderSide(color: lightPrimary),
    ),
  ),
);

final kDarkTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  colorSchemeSeed: darkPrimary,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: kWhite,
      backgroundColor: kRed,
      elevation: 0,
      //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      //padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: BorderSide(color: darkPrimary),
    ),
  ),
);
