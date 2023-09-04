import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/constants.dart';
import 'package:e_commerce_app/core/errors/failures.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';


@lazySingleton
class ProductRepo {
  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firebaseFirestore;

  ProductRepo(this._firebaseAuth, this._firebaseFirestore);

  Future<Either<Failure, void>> addToCart(
      {required Map<String, dynamic> product, required int quantity}) async {
    Map<String, dynamic> data = {
      'product': product,
      'quantity': quantity,
    };

    try {
      final uId = _firebaseAuth.currentUser!.uid;
      await _firebaseFirestore
          .collection(kUsersCollection)
          .doc(uId)
          .collection(kCartCollection)
          .doc(product['id'].toString())
          .set(
            data,
          );
      return right(null);
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  Future<Either<Failure, void>> addToFavourites(
      {required Map<String, dynamic> product}) async {
    try {
      final uId = _firebaseAuth.currentUser!.uid;
      await _firebaseFirestore
          .collection(kUsersCollection)
          .doc(uId)
          .collection(kFavoritesCollection)
          .doc(product['id'].toString())
          .set(product);
      return right(null);
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  Future<Either<Failure, void>> removeFromFavourites(
      {required Map<String, dynamic> product}) async {
    try {
      final uId = _firebaseAuth.currentUser!.uid;
      await _firebaseFirestore
          .collection(kUsersCollection)
          .doc(uId)
          .collection(kFavoritesCollection)
          .doc(product['id'].toString())
          .delete();
      return right(null);
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  Future<Either<Failure, bool>> checkProductInFavourites(
      {required String productId}) async {
    try {
      final uId = _firebaseAuth.currentUser!.uid;
      var result = await _firebaseFirestore
          .collection(kUsersCollection)
          .doc(uId)
          .collection(kFavoritesCollection)
          .doc(productId.toString())
          .get();
      if (result.exists) {
        return right(true);
      } else {
        return right(false);
      }
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }
}
