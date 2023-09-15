import 'package:flutter/material.dart';
import 'package:rent_me/app_manager.dart';
import 'package:rent_me/components/app_bar.dart';
import 'package:rent_me/components/bottom_nav_bar.dart';
import 'package:rent_me/services/main_page_service.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    AppManager.appSize = MediaQuery.of(context).size;
    AppManager.textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: getAppBar(context: context),
      body: getMainPageBody(),
      bottomNavigationBar: getBottomNavBar(),
    );
  }
}
