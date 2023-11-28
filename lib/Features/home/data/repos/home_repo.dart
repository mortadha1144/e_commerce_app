import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:e_commerce_app/Features/home/data/models/category_model.dart';
import 'package:e_commerce_app/Features/product/data/models/product_model.dart';
import 'package:e_commerce_app/Features/home/data/models/special_offer_model.dart';
import 'package:e_commerce_app/core/errors/failures.dart';
import 'package:e_commerce_app/core/utils/constants/firebase_collection_name.dart';

import '../../../../constants.dart';
import '../../../../core/utils/api_service.dart';

class HomeRepo {
  static final HomeRepo _instance =
      HomeRepo._internal(ApiService(), FirebaseFirestore.instance);

  factory HomeRepo() => _instance;

  HomeRepo._internal(this.apiService, this.db);

  final ApiService apiService;

  final FirebaseFirestore db;

  Future<Either<Failure, List<ProductModel>>> fetchPopularProductsOld() async {
    try {
      var data = await apiService.get(endPoin: 'products?limit=5');
      List<ProductModel> products = [];

      for (var item in data) {
        products.add(ProductModel.fromJson(item));
      }

      return right(products);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioExeotion(e));
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }

  Future<List<ProductModel>> fetchPopularProducts() async {
    // var data = await apiService.get(endPoin: 'products');
    // List<ProductModel> products = [];

    // for (var item in data) {
    //   products.add(ProductModel.fromJson(item));
    // }
    // products.removeWhere((element) => element.rating!.rate! < 3);
    var data = await db.collection(FirebaseCollectionName.products).get();
    List<ProductModel> products = [];
    for (var docSnapshot in data.docs) {
      products.add(ProductModel.fromJson(docSnapshot.data()));
    }

    return products;
  }

  Future<Either<Failure, List<SpecialOfferModel>>>
      fetchSpecialOffersOld() async {
    // db.collection(kSpecialOffersCollection).get().then(
    //   (querySnapshot) {
    //     print("Successfully completed");
    //     List<SpecialOffer> specialOffers = [];
    //     for (var docSnapshot in querySnapshot.docs) {
    //       specialOffers.add(SpecialOffer.fromJson(docSnapshot, null));
    //       print('${docSnapshot.id} => ${docSnapshot.data()}');
    //     }
    //     return right(specialOffers);
    //   },
    //   onError: (e) => left(ServerFailure.fromFirebaseAuthException(e)),
    // );

    try {
      var data =
          await db.collection(kSpecialOffersCollection).orderBy('id').get();
      List<SpecialOfferModel> specialOffers = [];
      for (var docSnapshot in data.docs) {
        specialOffers.add(SpecialOfferModel.fromJson(docSnapshot, null));
      }
      return right(specialOffers);
    } catch (e) {
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }

  Future<List<SpecialOfferModel>> fetchSpecialOffers() async {
    var data =
        await db.collection(kSpecialOffersCollection).orderBy('id').get();
    List<SpecialOfferModel> specialOffers = [];
    for (var docSnapshot in data.docs) {
      specialOffers.add(SpecialOfferModel.fromJson(docSnapshot, null));
    }
    return specialOffers;
  }

  Future<List<CategoryModel>> fetchCategories() async {
    var data = await db.collection(kCategoriesCollection).orderBy('id').get();
    // .then(
    //   (querySnapshot) {
    //     print("Successfully completed");
    //     for (var docSnapshot in querySnapshot.docs) {
    //       print('${docSnapshot.id} => ${docSnapshot.data()}');
    //     }
    //   },
    //   onError: (e) => print("Error completing: $e"),
    // );
    List<CategoryModel> categories = [];

    for (var docSnapshot in data.docs) {
      categories.add(CategoryModel.fromJson(docSnapshot, null));
    }
    return categories;
  }

  Future<Either<Failure, List<List<dynamic>>>> fetchHomeData() async {
    try {
      final result = Future.wait([
        fetchCategories(),
        fetchSpecialOffers(),
        fetchPopularProducts(),
      ]);

      return right(await result);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioExeotion(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
