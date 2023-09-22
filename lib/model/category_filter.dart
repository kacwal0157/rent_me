class CategoryFilter {
  String filterTitle;
  List<String> filterOptions;

  CategoryFilter({
    required this.filterTitle,
    required this.filterOptions,
  });

  factory CategoryFilter.fromJson(Map<String, dynamic> json) {
    List<String> options = (json['filterOptions'] as List)
        .map((option) => option.toString())
        .toList();

    return CategoryFilter(
      filterTitle: json['filterTitle'],
      filterOptions: options,
    );
  }

  Map<String, dynamic> toJson() {
    List<dynamic> options = filterOptions.map((option) => option).toList();
    
    return {
      'filterTitle': filterTitle,
      'filterOptions': options,
    };
  }
}
