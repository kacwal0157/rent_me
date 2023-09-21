import 'package:flutter/material.dart';
import 'package:rent_me/components/app_bar.dart';
import 'package:rent_me/components/bottom_nav_bar.dart';

class OfferPage extends StatefulWidget {
  const OfferPage({super.key});

  @override
  State<OfferPage> createState() => _OfferPageState();
}

class _OfferPageState extends State<OfferPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(context: context, applyLeading: true),
      body: Container(),
      bottomNavigationBar: getBottomNavBar(),
    );
  }
}
