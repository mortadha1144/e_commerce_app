import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce_app/Features/home/data/models/category_model.dart';
import 'package:e_commerce_app/Features/home/data/models/special_offer_model.dart';
import 'package:e_commerce_app/Features/product/data/models/product_model.dart';
import 'package:e_commerce_app/core/utils/constants/firebase_collection_name.dart';
import 'package:e_commerce_app/core/utils/constants/firebase_field_name.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final homeRepoProvider = AutoDisposeProvider<HomeRepo>(
  (_) => HomeRepo(),
);

class HomeRepo {
  Future<List<SpecialOfferModel>> getSpecialOffers() async {
    final result = await FirebaseFirestore.instance
        .collection(FirebaseCollectionName.specialOffers)
        .get();

    return result.docs
        .map(
          (item) => SpecialOfferModel.fromJson(
            item.data(),
          ),
        )
        .toList();
  }

  Future<List<CategoryModel>> getCategories() async {
    final result = await FirebaseFirestore.instance
        .collection(FirebaseCollectionName.categories)
        .orderBy(FirebaseFieldName.id)
        .get();

    return result.docs
        .map(
          (item) => CategoryModel.fromJson(
            item.data(),
          ),
        )
        .toList();
  }

  Future<List<ProductModel>> getPopularProducts() async {
    final result = await FirebaseFirestore.instance
        .collection(FirebaseCollectionName.products)
        .where(
          '${FirebaseFieldName.rating}.${FirebaseFieldName.rate}',
          isGreaterThanOrEqualTo: 3,
        )
        .limit(10)
        .get();
    return result.docs
        .map(
          (item) => ProductModel.fromJson(
            item.data(),
          ),
        )
        .toList();
  }
}
