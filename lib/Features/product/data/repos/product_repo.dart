import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/Features/product/data/models/favorite_model.dart';
import 'package:e_commerce_app/Features/product/data/models/favorite_un_favorite_request.dart';
import 'package:e_commerce_app/constants.dart';
import 'package:e_commerce_app/core/errors/failures.dart';
import 'package:e_commerce_app/Features/product/data/services/product_services.dart';
import 'package:e_commerce_app/core/utils/constants/firebase_collection_name.dart';
import 'package:e_commerce_app/core/utils/constants/firebase_field_name.dart';
import 'package:e_commerce_app/core/utils/providers/firebase_providers.dart';
import 'package:e_commerce_app/core/utils/typedefs.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final productRepoProvider = Provider(
  (ref) => ProductRepo(
    ref.read(productServiceProvider),
    ref.read(firebaseFirestoreProvider),
  ),
);

class ProductRepo {
  final ProductService _productService;

  final FirebaseFirestore _firebaseFirestore;

  ProductRepo(this._productService, this._firebaseFirestore);

  Future<Either<Failure, void>> addToCart(
      {required Map<String, dynamic> product, required int quantity}) async {
    try {
      Map<String, dynamic> data = {
        'product': product,
        'quantity': quantity,
      };
      DocRef productRef = _productService.getProductRef(
        productId: product['id'].toString(),
        innerCollection: kCartCollection,
      );
      // check if product already exists in cart
      DocSnapshot oldProduct = await productRef.get();
      if (oldProduct.exists) {
        // update quantity
        int oldQuantity = oldProduct.data()?['quantity'] ?? 0;
        data.update('quantity', (value) => oldQuantity + quantity);
        await oldProduct.reference.update(data);
      } else {
        // add new product
        await productRef.set(data);
      }
      return right(null);
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  Future<Either<Failure, void>> addToFavorites(
      {required Map<String, dynamic> product}) async {
    try {
      await _productService
          .getProductRef(
              productId: product['id'].toString(),
              innerCollection: kFavoritesCollection)
          .set(product);
      return right(null);
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }



  Future<void> toggleFavorite(
      {required FavoriteUnFavoriteRequest request}) async {
    final query = FirebaseFirestore.instance
        .collection(FirebaseCollectionName.favorites)
        .where(FirebaseFieldName.productId, isEqualTo: request.productId)
        .where(FirebaseFieldName.userId, isEqualTo: request.likedBy)
        .get();

     final hasFavored = await query.then(
      (snapshot) => snapshot.docs.isNotEmpty,
    );
    if (hasFavored) {
      // delete the like
      await query.then(
          (snapshot) async {
            for (final doc in snapshot.docs) {
              await doc.reference.delete();
            }
          },
        );
    } else {
      // post a favorite model
      final favorite = FavoriteModel(
        productId: request.productId,
        likedBy: request.likedBy,
        date: DateTime.now(),
      );

      await FirebaseFirestore.instance
          .collection(FirebaseCollectionName.favorites)
          .add(favorite.toJson());
    } 
  }

  Stream<QSnapshot> checkProductInFavorites({
    required ProductId productId,
    required UserId userId,
  }) {
    return _firebaseFirestore
        .collection(FirebaseCollectionName.favorites)
        .where(FirebaseFieldName.productId, isEqualTo: productId)
        .where(FirebaseFieldName.userId, isEqualTo: userId)
        .snapshots();
  }
}
