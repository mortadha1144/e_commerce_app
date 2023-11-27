import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce_app/Features/cart/data/models/add_or_delete_product_in_cart_request.dart';
import 'package:e_commerce_app/core/utils/constants/firebase_collection_name.dart';
import 'package:e_commerce_app/core/utils/constants/firebase_field_name.dart';
import 'package:e_commerce_app/core/utils/typedefs.dart';

abstract class CartRepo {
  Future<void> addOrDeleteProductInCart(
      AddOrDeleteProductInCartRequest request);

  Stream<DocSnapshot> isProductInCart({
    required ProductId productId,
    required UserId userId,
  });
}

class CartRepoImpl implements CartRepo {
  final FirebaseFirestore _firebaseFirestore;

  CartRepoImpl(this._firebaseFirestore);

  @override
  Future<void> addOrDeleteProductInCart(
      AddOrDeleteProductInCartRequest request) async {
    final query = FirebaseFirestore.instance
        .collection(FirebaseCollectionName.users)
        .doc(request.userId)
        .collection(FirebaseCollectionName.cart)
        .doc(request.product.id.toString())
        .get();

    final isProductInCart = await query.then((snapshot) => snapshot.exists);

    if (isProductInCart) {
      // delete product from cart
      await query.then((snapshot) => snapshot.reference.delete());
    } else {
      Map<String, dynamic> data = {
        FirebaseFieldName.product: request.product.toJson(),
        FirebaseFieldName.quantity: request.quantity,
      };
      await _firebaseFirestore
          .collection(FirebaseCollectionName.users)
          .doc(request.userId)
          .collection(FirebaseCollectionName.cart)
          .doc(request.product.id.toString())
          .set(data);
    }
  }

  @override
  Stream<DocSnapshot> isProductInCart({
    required ProductId productId,
    required UserId userId,
  }) {
    return _firebaseFirestore
        .collection(FirebaseCollectionName.users)
        .doc(userId)
        .collection(FirebaseCollectionName.cart)
        .doc(productId)
        .snapshots();
    // .where(FirebaseFieldName.productId, isEqualTo: productId)
    // .where(FirebaseFieldName.userId, isEqualTo: userId)
    // .snapshots();
  }
}
