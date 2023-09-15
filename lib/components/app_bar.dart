import 'package:flutter/material.dart';
import 'package:rent_me/app_manager.dart';
import 'package:rent_me/constants/constant_colors.dart';

AppBar getAppBar({
  required BuildContext context,
}) =>
    AppBar(
      title: Text(
        "RentMe",
        style: AppManager.textTheme.headlineMedium,
      ),
      backgroundColor: mainColor,
      automaticallyImplyLeading: false,
      actions: [
        IconButton(
          onPressed: () {
            debugPrint("Account Page");
          },
          icon: const Icon(
            Icons.account_circle_outlined,
            size: 30,
          ),
        ),
      ],
    );
