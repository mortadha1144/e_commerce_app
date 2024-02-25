import 'package:e_commerce_app/Features/product/data/repos/product_repo.dart';
import 'package:e_commerce_app/core/utils/enums/sort.dart';
import 'package:e_commerce_app/core/utils/type_defs.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final productQueryProvider =
    AutoDisposeNotifierProvider<ProductQueryNotifier, QueryMap>(
  ProductQueryNotifier.new,
);

class ProductQueryNotifier extends AutoDisposeNotifier<QueryMap> {
  @override
  QueryMap build() {
    return ref.read(productRepoProvider).getAllProducts(null);
  }

  void search(String query) {
    state = ref.read(productRepoProvider).searchProducts(query);
  }

  void sort(Sort? sort) {
    state = ref.read(productRepoProvider).getAllProducts(sort);
  }
}
