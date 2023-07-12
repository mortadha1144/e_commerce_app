import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:e_commerce_app/Features/home/data/models/product/product.dart';
import 'package:e_commerce_app/core/errors/failures.dart';

import '../../../../constants.dart';
import '../../../../core/utils/api_service.dart';

class HomeRepo {
  static final HomeRepo _instance =
      HomeRepo._internal(ApiService(), FirebaseFirestore.instance);

  factory HomeRepo() => _instance;

  HomeRepo._internal(this.apiService, this.db);

  final ApiService apiService;

  final FirebaseFirestore db;

  Future<Either<Failure, List<Product>>> fetchPopularProducts() async {
    try {
      var data = await apiService.get(endPoin: 'products');
      List<Product> products = [];

      for (var item in data) {
        products.add(Product.fromJson(item));
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

  Future<void> fetchSpecialOffers() async {
    db.collection(kSpecialOffersCollection).get().then(
      (querySnapshot) {
        print("Successfully completed");
        for (var docSnapshot in querySnapshot.docs) {
          print('${docSnapshot.id} => ${docSnapshot.data()}');
        }
      },
      onError: (e) => print("Error completing: $e"),
    );
  }
}
