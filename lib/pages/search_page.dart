import 'package:flutter/material.dart';
import 'package:rent_me/app_manager.dart';
import 'package:rent_me/components/app_bar.dart';
import 'package:rent_me/components/bottom_nav_bar.dart';
import 'package:rent_me/constants/constant_sizes.dart';
import 'package:rent_me/constants/constant_texts.dart';
import 'package:rent_me/model/category_filter.dart';
import 'package:rent_me/widgets/search_bar_widget.dart';
import 'package:rent_me/widgets/search_page/search_filter_widget.dart';
import 'package:rent_me/widgets/search_page/search_history_widget.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController _searchController = TextEditingController();

  _refreshPage() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    AppManager.searchPageCallback = _refreshPage;

    return Scaffold(
      appBar: getAppBar(context: context, applyLeading: false),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(defaultPadding),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              getSearchBar(textController: _searchController),
              const SizedBox(
                height: spaceSizedBoxHeight,
              ),
              _getOnePartFilterWidget(AppManager.categoryFilters['gear_box']!),
              const SizedBox(
                height: spaceSizedBoxHeight,
              ),
              _getOnePartFilterWidget(AppManager.categoryFilters['petrol']!),
              const SizedBox(
                height: spaceSizedBoxHeight,
              ),
              _getTwoPartFilterWidget(
                  AppManager.categoryFilters['car_mileage']!),
              const SizedBox(
                height: spaceSizedBoxHeight,
              ),
              _getTwoPartFilterWidget(
                  AppManager.categoryFilters['car_production_year']!),
              const SizedBox(
                height: spaceSizedBoxHeight,
              ),
              Text(
                searchHistoryText,
                style: AppManager.textTheme.headlineMedium,
              ),
              const SizedBox(
                height: spaceSizedBoxHeight - 10,
              ),
              getHistoryList(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: getBottomNavBar(),
    );
  }

  _getOnePartFilterWidget(CategoryFilter categoryFilter) {
    return Column(
      children: [
        Text(
          categoryFilter.filterTitle,
          style: AppManager.textTheme.headlineSmall!.apply(fontSizeFactor: 1.2),
        ),
        const SizedBox(
          height: spaceSizedBoxHeight - 10,
        ),
        CategoryFilterWidget(
          filterTitle: categoryFilter.filterTitle,
          filterOptions: categoryFilter.filterOptions,
        ),
      ],
    );
  }

  _getTwoPartFilterWidget(CategoryFilter categoryFilter) {
    return Column(
      children: [
        Text(
          categoryFilter.filterTitle,
          style: AppManager.textTheme.headlineSmall!.apply(fontSizeFactor: 1.2),
        ),
        const SizedBox(
          height: spaceSizedBoxHeight - 10,
        ),
        SizedBox(
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 150,
                child: CategoryFilterWidget(
                  filterTitle: 'Od',
                  filterOptions: categoryFilter.filterOptions,
                ),
              ),
              const SizedBox(
                width: spaceSizedBoxWidth - 25,
              ),
              SizedBox(
                width: 150,
                child: CategoryFilterWidget(
                  filterTitle: 'Do',
                  filterOptions: categoryFilter.filterOptions,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
