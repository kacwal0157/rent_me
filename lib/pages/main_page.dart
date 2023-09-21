import 'package:flutter/material.dart';
import 'package:rent_me/app_manager.dart';
import 'package:rent_me/components/app_bar.dart';
import 'package:rent_me/components/bottom_nav_bar.dart';
import 'package:rent_me/widgets/main_page/main_page_widgets.dart';

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
      appBar: getAppBar(context: context, applyLeading: false),
      body: getMainPageBody(),
      bottomNavigationBar: getBottomNavBar(),
    );
  }
}
