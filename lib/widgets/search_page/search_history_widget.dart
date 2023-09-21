import 'package:flutter/material.dart';
import 'package:rent_me/app_manager.dart';

Expanded getHistoryList() => Expanded(
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
