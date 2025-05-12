import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce_app/features/product/data/models/product_model.dart';
import 'package:e_commerce_app/features/product/data/models/products_filter.dart';
import 'package:e_commerce_app/features/product/data/repos/product_repo.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final specialOffersQueryProvider =
AutoDisposeNotifierProvider.family<SpecialOffersQueryNotifier, Query<ProductModel>,ProductsFilter>(
  SpecialOffersQueryNotifier.new,
);

class SpecialOffersQueryNotifier extends AutoDisposeFamilyNotifier<Query<ProductModel>,ProductsFilter> {
  @override
  Query<ProductModel> build(arg) {
    return ref.read(productRepoProvider).getSpecialOffersProducts(arg);
  }

  void search(String query,ProductsFilter filter) {
    state = ref.read(productRepoProvider).searchSpecialOffersProducts(query, filter);
  }

  void getAllProducts(ProductsFilter filter) {
    state = ref.read(productRepoProvider).getSpecialOffersProducts(filter);
  }
}
