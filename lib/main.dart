import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rent_me/routes/routes.dart';
import 'package:rent_me/themes/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'RentMe',
      themeMode: ThemeMode.system,
      theme: lightMode,
      darkTheme: darkMode,
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.getHomeRoute(),
      getPages: Routes.routes,
    );
  }
}
