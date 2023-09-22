import 'package:flutter/material.dart';
import 'package:rent_me/app_manager.dart';

SizedBox getHistoryList() => SizedBox(
      height: 200,
      child: ListView.builder(
        itemCount: AppManager.searchHistory.length,
        itemBuilder: (context, index) {
          final query = AppManager.searchHistory[index];
          return ListTile(
            title: Text(query),
          );
        },
      ),
    );
