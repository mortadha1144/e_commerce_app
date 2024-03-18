import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce_app/features/product/data/models/product_model.dart';
import 'package:e_commerce_app/features/product/data/models/products_filter.dart';
import 'package:e_commerce_app/core/utils/constants/firebase_collection_name.dart';
import 'package:e_commerce_app/core/utils/constants/firebase_field_name.dart';
import 'package:e_commerce_app/core/utils/extensions.dart';
import 'package:e_commerce_app/core/utils/type_defs.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final productRepoProvider = Provider.autoDispose(
  (ref) => ProductRepo(),
);

class ProductRepo {
  QueryMap _getProductQuery({int? categoryId}) {
    QueryMap query =
        FirebaseFirestore.instance.collection(FirebaseCollectionName.products);

    if (categoryId != null) {
      query = query.where(FirebaseFieldName.category.fieldPathId,
          isEqualTo: categoryId);
    }

    return query;
  }

  QueryMap getAllProducts(ProductsFilter filter) {
    QueryMap query = _getProductQuery(categoryId: filter.category?.id);

    return query.orderBy(
      filter.sort?.value ?? FirebaseFieldName.title,
      descending: filter.sort?.descending ?? false,
    );
  }

  QueryMap searchProducts(String searchQuery, int? category) {
    QueryMap query = _getProductQuery(categoryId: category);
    return query
        .where(FirebaseFieldName.title,
            isGreaterThanOrEqualTo: searchQuery.capitalize())
        .where(FirebaseFieldName.title,
            isLessThan: '${searchQuery.capitalize()}\uf8ff')
        .orderBy(
          FirebaseFieldName.title,
        );
  }

  Query<ProductModel> getSpecialOffersProducts(ProductsFilter filter) {
    QueryMap query = _getProductQuery(categoryId: filter.category?.id);
    if (filter.subCategory?.id != null) {
      query = query.where(
        FirebaseFieldName.subCategory.fieldPathId,
        isEqualTo: filter.subCategory?.id,
      );
    }

    return query
        .where(
          FirebaseFieldName.isSpecialOffer,
          isEqualTo: true,
        )
        .orderBy(FirebaseFieldName.title)
        .withConverter<ProductModel>(
          fromFirestore: (snapshot, options) => ProductModel.fromJson(
            snapshot.data()!,
          ),
          toFirestore: (product, options) => product.toJson(),
        );
  }

  Query<ProductModel> searchSpecialOffersProducts(
    String searchQuery,
    ProductsFilter filter,
  ) {
    QueryMap query = _getProductQuery(categoryId: filter.category?.id);
    if (filter.subCategory?.id != null) {
      query = query.where(
        FirebaseFieldName.subCategory.fieldPathId,
        isEqualTo: filter.subCategory?.id,
      );
    }

    return query
        .where(FirebaseFieldName.title,
            isGreaterThanOrEqualTo: searchQuery.capitalize())
        .where(FirebaseFieldName.title,
            isLessThan: '${searchQuery.capitalize()}\uf8ff')
        .where(
          FirebaseFieldName.isSpecialOffer,
          isEqualTo: true,
        )
        .orderBy(FirebaseFieldName.title)
        .withConverter<ProductModel>(
          fromFirestore: (snapshot, options) =>
              ProductModel.fromJson(snapshot.data()!),
          toFirestore: (value, options) => value.toJson(),
        );
  }
}
