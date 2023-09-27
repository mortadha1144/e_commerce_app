import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/constants.dart';
import 'package:e_commerce_app/core/errors/failures.dart';
import 'package:e_commerce_app/core/utils/services/product_services.dart';
import 'package:e_commerce_app/core/utils/type_defs.dart';
import 'package:e_commerce_app/core/utils/typedefs.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final productRepoProvider = Provider(
  (ref) => ProductRepo(
    ref.read(productServiceProvider),
  ),
);

class ProductRepo {
  final ProductService _productService;

  ProductRepo(this._productService);

  Future<Either<Failure, void>> addToCart(
      {required Map<String, dynamic> product, required int quantity}) async {
    Map<String, dynamic> data = {
      'product': product,
      'quantity': quantity,
    };

    try {
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

  Future<Either<Failure, void>> addToFavourites(
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

  Future<Either<Failure, void>> removeFromFavourites(
      {required String productId}) async {
    try {
      await _productService
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

  Stream<DocumentSnapshot<Map<String, dynamic>>> checkProductInFavourites(
      {required ProductId productId}) {
    DocumentReference<Map<String, dynamic>> result =  _productService.getProductRef(
      productId: productId,
      innerCollection: kFavoritesCollection,
    );
    return result.snapshots();
  }
}
