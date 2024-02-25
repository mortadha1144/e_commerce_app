import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce_app/Features/product/data/models/products_filter.dart';
import 'package:e_commerce_app/core/utils/constants/firebase_collection_name.dart';
import 'package:e_commerce_app/core/utils/constants/firebase_field_name.dart';
import 'package:e_commerce_app/core/utils/extensions.dart';
import 'package:e_commerce_app/core/utils/type_defs.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final productRepoProvider = Provider.autoDispose(
  (ref) => ProductRepo(),
);

class ProductRepo {
   QueryMap _getProductQuery({String? category}) {
    QueryMap query = FirebaseFirestore.instance.collection(FirebaseCollectionName.products);

    if (category != null) {
      query = query.where(FirebaseFieldName.category, isEqualTo: category);
    }

    return query;
  }
  QueryMap getAllProducts(ProductsFilter filter) {
    QueryMap query = _getProductQuery(category: filter.category);

    return query.orderBy(
      filter.sort?.value ?? FirebaseFieldName.title,
      descending: filter.sort?.descending ?? false,
    );
  }

  QueryMap searchProducts(String searchQuery, String? category) {
    QueryMap query = _getProductQuery(category: category);
    return query
        .where(FirebaseFieldName.title,
            isGreaterThanOrEqualTo: searchQuery.capitalize())
        .where(FirebaseFieldName.title,
            isLessThan: '${searchQuery.capitalize()}\uf8ff')
        .orderBy(
          FirebaseFieldName.title,
        );
  }
}
