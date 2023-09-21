import 'package:flutter/material.dart';
import 'package:rent_me/constants/constant_enums.dart';
import 'package:rent_me/services/bottom_nav_buttons_service.dart';

Row getBottomNavBar() => Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _getIconBtn(
          iconData: Icons.home_rounded,
          onPressed: () => getBottomNavBtnAction(BottomNavBtn.home),
        ),
        _getIconBtn(
          iconData: Icons.search_rounded,
          onPressed: () => getBottomNavBtnAction(BottomNavBtn.search),
        ),
        _getIconBtn(
          iconData: Icons.favorite_rounded,
          onPressed: () {
            debugPrint("FAVORITE");
          },
        ),
        _getIconBtn(
          iconData: Icons.shopping_bag_rounded,
          onPressed: () {
            debugPrint("BUCKET");
          },
        ),
      ],
    );

Widget _getIconBtn({required IconData iconData, required VoidCallback onPressed}) {
  return IconButton(
    onPressed: onPressed,
    icon: Icon(
      iconData,
      size: 30,
    ),
  );
}
