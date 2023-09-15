import 'package:flutter/material.dart';

Row getBottomNavBar() => Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _getIconBtn(
          iconData: Icons.home_rounded,
          onPressed: () {
            debugPrint("HOME");
          },
        ),
        _getIconBtn(
          iconData: Icons.search_rounded,
          onPressed: () {
            debugPrint("SEARCH");
          },
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
