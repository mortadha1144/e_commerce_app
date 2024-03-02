import 'package:e_commerce_app/Features/product/data/models/products_filter.dart';
import 'package:e_commerce_app/Features/product/data/repos/product_repo.dart';
import 'package:e_commerce_app/core/utils/type_defs.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final allProductQueryProvider =
    AutoDisposeNotifierProvider.family<AllProductQueryNotifier, QueryMap,ProductsFilter>(
  AllProductQueryNotifier.new,
);

class AllProductQueryNotifier extends AutoDisposeFamilyNotifier<QueryMap,ProductsFilter> {
  @override
  QueryMap build(arg) {
    return ref.read(productRepoProvider).getAllProducts(arg);
  }

  void search(String query,int? categoryId) {
    state = ref.read(productRepoProvider).searchProducts(query, categoryId);
  }

  void getAllProducts(ProductsFilter filter) {
    state = ref.read(productRepoProvider).getAllProducts(filter);
  }
}
