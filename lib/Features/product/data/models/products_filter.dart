import 'package:e_commerce_app/core/utils/enums/sort.dart';
import 'package:e_commerce_app/core/data/models/named_object.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'products_filter.freezed.dart';

@freezed
class ProductsFilter with _$ProductsFilter {
  const factory ProductsFilter({
    NamedObject? category,
    NamedObject? subCategory,
    Sort? sort,
  }) = _ProductsFilter;
}
