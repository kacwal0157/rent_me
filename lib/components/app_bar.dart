import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rent_me/app_manager.dart';
import 'package:rent_me/constants/constant_colors.dart';

AppBar getAppBar({
  required BuildContext context,
  required bool applyLeading,
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
            applyLeading ? Get.back() : debugPrint("Account Page");
          },
          icon: Icon(
            applyLeading ? Icons.close_rounded : Icons.account_circle_outlined,
            size: 30,
            color: Colors.black,
          ),
        ),
      ],
    );
