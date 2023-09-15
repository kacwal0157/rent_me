import 'package:flutter/material.dart';
import 'package:rent_me/themes/text_theme.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  primaryColor: Colors.green.shade400,
  textTheme: lightTextTheme,
);
ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.greenAccent.shade400,
  textTheme: darkTextTheme,
);
