import 'package:flutter/material.dart';
import 'package:rent_me/app_manager.dart';
import 'package:rent_me/constants/constant_colors.dart';
import 'package:rent_me/constants/constant_sizes.dart';
import 'package:rent_me/constants/constant_texts.dart';

Container getSearchBar({
  required TextEditingController textController,
}) =>
    Container(
      width: double.infinity,
      height: AppManager.appSize.height * 0.07,
      decoration: BoxDecoration(
          border: Border.all(
            color: secondaryColor,
          ),
          borderRadius: BorderRadius.circular(defaultContainerBorderRadius)),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search_rounded,
              size: 30,
            ),
          ),
          Expanded(
            child: TextField(
              controller: textController,
              onSubmitted: (value) {
                _addToHistory(textController.text);
              },
              maxLength: 50,
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: AppManager.textTheme.bodySmall,
                border: InputBorder.none,
                counterText: "",
              ),
            ),
          ),
        ],
      ),
    );

void _addToHistory(String query) {
  AppManager.searchHistory.insert(0, query);
  if (AppManager.searchHistory.length > 10) {
    AppManager.searchHistory.removeLast();
  }

  AppManager.searchPageCallback();
}
