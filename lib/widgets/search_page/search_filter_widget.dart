import 'package:flutter/material.dart';

class CategoryFilterWidget extends StatefulWidget {
  const CategoryFilterWidget(
      {super.key, required this.filterTitle, required this.filterOptions});

  final String filterTitle;
  final List<String> filterOptions;

  @override
  State<CategoryFilterWidget> createState() => _CategoryFilterWidgetState();
}

class _CategoryFilterWidgetState extends State<CategoryFilterWidget> {
  String selectedCategory = '';
  bool isCategoryExpanded = false;

  @override
  Widget build(BuildContext context) {
    return ExpansionPanelList(
      elevation: 1,
      expandedHeaderPadding: const EdgeInsets.only(top: 10),
      dividerColor: Colors.grey,
      children: [
        ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  isCategoryExpanded = !isCategoryExpanded;
                });
              },
              child: ListTile(
                title: Text(
                  selectedCategory.isEmpty
                      ? widget.filterTitle
                      : selectedCategory,
                  style: const TextStyle(fontSize: 16.0),
                ),
              ),
            );
          },
          body: ListView.builder(
            shrinkWrap: true,
            itemCount: widget.filterOptions.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(widget.filterOptions[index]),
                onTap: () {
                  _selectCategory(widget.filterOptions[index]);
                },
              );
            },
          ),
          isExpanded: isCategoryExpanded,
        ),
      ],
    );
  }

  void _selectCategory(String category) {
    setState(() {
      selectedCategory = category;
      isCategoryExpanded = !isCategoryExpanded;
    });
  }
}
