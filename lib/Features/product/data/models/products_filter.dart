import 'package:e_commerce_app/core/utils/enums/sort.dart';

class ProductsFilter {
  final String? searchQuery;
  final Sort? sort;
  final String? category;

 const ProductsFilter({
    this.searchQuery,
    this.sort,
    this.category,
  });

  // copyWith method
  ProductsFilter copyWith({
    String? searchQuery,
    Sort? sort,
    String? category,
  }) {
    return ProductsFilter(
      searchQuery: searchQuery ?? this.searchQuery,
      sort: sort ?? this.sort,
      category: category ?? this.category,
    );
  }
}