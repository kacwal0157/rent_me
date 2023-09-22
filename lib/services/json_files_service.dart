import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:rent_me/app_manager.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:rent_me/model/category_filter.dart';

Future<void> getJsonFiles() async {
  Map<String, CategoryFilter> filtersList = {};
  List<String> jsonFileNames = [
    'gear_box',
    'petrol',
    'car_mileage',
    'car_production_year'
  ];

  for (String fileName in jsonFileNames) {
    filtersList[fileName] = await _readJsonFromAssets(fileName);
  }

  AppManager.categoryFilters = filtersList;
}

Future<CategoryFilter> _readJsonFromAssets(String fileName) async {
  try {
    final jsonContent =
        await rootBundle.loadString('assets/json/filters/$fileName.json');
    final jsonData = json.decode(jsonContent);

    return CategoryFilter.fromJson(jsonData);
  } catch (e) {
    debugPrint('$e');
    return CategoryFilter(filterTitle: 'filterTitle', filterOptions: []);
  }
}
