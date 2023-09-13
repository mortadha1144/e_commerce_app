import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/constants.dart';
import 'package:e_commerce_app/core/errors/failures.dart';
import 'package:e_commerce_app/core/utils/services/firebase_service.dart';
import 'package:e_commerce_app/core/utils/type_defs.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final productRepoProvider = Provider(
  (ref) => ProductRepo(
    ref.read(firebaseServiceProvider),
  ),
);

class ProductRepo {
  final FirebaseService _firebaseService;

  ProductRepo(this._firebaseService);

  Future<Either<Failure, void>> addToCart(
      {required Map<String, dynamic> product, required int quantity}) async {
    Map<String, dynamic> data = {
      'product': product,
      'quantity': quantity,
    };

    try {
      DocRef productRef = _firebaseService.getProductRef(
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

  Future<Either<Failure, void>> addToFavourites(
      {required Map<String, dynamic> product}) async {
    try {
      await _firebaseService
          .getProductRef(
              productId: product['id'].toString(),
              innerCollection: kFavoritesCollection)
          .set(product);
      return right(null);
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  Future<Either<Failure, void>> removeFromFavourites(
      {required String productId}) async {
    try {
      await _firebaseService
          .getProductRef(
            productId: productId,
            innerCollection: kFavoritesCollection,
          )
          .delete();
      return right(null);
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  Future<bool> checkProductInFavourites({required String productId}) async {
    DocSnapshot result = await _firebaseService
        .getProductRef(
          productId: productId,
          innerCollection: kFavoritesCollection,
        )
        .get();
    return result.exists;
  }
}
