import 'package:flutter/material.dart';

class AppManager {
  AppManager._();

  //*APP CONFIG
  static Size appSize = const Size(1920, 1080);
  static TextTheme textTheme = const TextTheme();

  //*SEARCH
  static List<String> searchHistory = [];
  static VoidCallback searchPageCallback = (){};
}
