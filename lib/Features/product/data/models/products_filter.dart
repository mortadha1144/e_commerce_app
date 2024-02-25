import 'package:e_commerce_app/core/utils/enums/sort.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'products_filter.freezed.dart';

@freezed
class ProductsFilter with _$ProductsFilter {
  const factory ProductsFilter({
    String? category,
    Sort? sort,
  }) = _ProductsFilter;
}
