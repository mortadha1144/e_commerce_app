import 'package:e_commerce_app/Features/product/data/models/products_filter.dart';
import 'package:e_commerce_app/Features/product/data/repos/product_repo.dart';
import 'package:e_commerce_app/core/utils/type_defs.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final productQueryProvider =
    AutoDisposeNotifierProvider.family<ProductQueryNotifier, QueryMap,ProductsFilter>(
  ProductQueryNotifier.new,
);

class ProductQueryNotifier extends AutoDisposeFamilyNotifier<QueryMap,ProductsFilter> {
  @override
  QueryMap build(arg) {
    return ref.read(productRepoProvider).getAllProducts(arg);
  }

  void search(String query,[String? category]) {
    state = ref.read(productRepoProvider).searchProducts(query, category);
  }

  void getAllProducts(ProductsFilter filter) {
    state = ref.read(productRepoProvider).getAllProducts(filter);
  }
}
