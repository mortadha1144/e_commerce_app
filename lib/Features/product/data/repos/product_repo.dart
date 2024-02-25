import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce_app/Features/product/data/models/products_filter.dart';
import 'package:e_commerce_app/core/utils/constants/firebase_collection_name.dart';
import 'package:e_commerce_app/core/utils/constants/firebase_field_name.dart';
import 'package:e_commerce_app/core/utils/enums/sort.dart';
import 'package:e_commerce_app/core/utils/extensions.dart';
import 'package:e_commerce_app/core/utils/type_defs.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final productRepoProvider = Provider.autoDispose(
  (ref) => ProductRepo(),
);

class ProductRepo {
  QueryMap getAllProducts(Sort? sort) => FirebaseFirestore.instance
      .collection(FirebaseCollectionName.products)
      .orderBy(
        sort?.value ?? FirebaseFieldName.title,
        descending: sort?.descending ?? false,
      );

  QueryMap searchProducts(String query) => FirebaseFirestore.instance
      .collection(FirebaseCollectionName.products)
      .where(FirebaseFieldName.title,
          isGreaterThanOrEqualTo: query.capitalize())
      .where(FirebaseFieldName.title, isLessThan: '${query.capitalize()}\uf8ff')
      .orderBy(
        FirebaseFieldName.title,
      );
}
