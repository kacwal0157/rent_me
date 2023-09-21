import 'package:flutter/material.dart';
import 'package:rent_me/app_manager.dart';
import 'package:rent_me/components/app_bar.dart';
import 'package:rent_me/components/bottom_nav_bar.dart';
import 'package:rent_me/constants/constant_sizes.dart';
import 'package:rent_me/constants/constant_texts.dart';
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
      body: Container(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: spaceSizedBoxHeight,
            ),
            getSearchBar(textController: _searchController),
            const SizedBox(
              height: spaceSizedBoxHeight,
            ),
            const CategoryFilterWidget(
              filterTitle: 'Skrzynia',
              filterOptions: ['Wszytskie typy ', 'Automatyczna', 'Manualna'],
            ),
            const SizedBox(
              height: spaceSizedBoxHeight,
            ),
            Text(
              'Rok produkcji',
              style: AppManager.textTheme.headlineSmall!
                  .apply(fontSizeFactor: 1.2),
            ),
            const SizedBox(
              height: spaceSizedBoxHeight,
            ),
            const SizedBox(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 150,
                    child: CategoryFilterWidget(
                      filterTitle: 'Od',
                      filterOptions: ['2000', '2005'],
                    ),
                  ),
                  SizedBox(
                    width: spaceSizedBoxWidth - 25,
                  ),
                  SizedBox(
                    width: 150,
                    child: CategoryFilterWidget(
                      filterTitle: 'Do',
                      filterOptions: ['2005', '2010'],
                    ),
                  ),
                ],
              ),
            ),
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
      bottomNavigationBar: getBottomNavBar(),
    );
  }
}
