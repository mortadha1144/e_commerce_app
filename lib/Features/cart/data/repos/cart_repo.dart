import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce_app/Features/cart/data/models/add_product_to_cart_request.dart';
import 'package:e_commerce_app/Features/product/data/models/product_model.dart';
import 'package:e_commerce_app/core/utils/constants/firebase_collection_name.dart';
import 'package:e_commerce_app/core/utils/constants/firebase_field_name.dart';
import 'package:e_commerce_app/core/utils/providers/firebase_providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class CartRepo {
  Future<void> addProductToCart(AddProductToCartRequest request);
}

class CartRepoImpl implements CartRepo {
  final FirebaseFirestore _firestore;

  CartRepoImpl(this._firestore);

  @override
  Future<void> addProductToCart(AddProductToCartRequest request) async {
    Map<String, dynamic> data = {
      FirebaseFieldName.product: request.product.toJson(),
      FirebaseFieldName.quantity: request.quantity,
    };
    await _firestore
        .collection(FirebaseCollectionName.cart)
        .doc(request.userId)
        .collection(FirebaseCollectionName.cartItems)
        .doc(request.product.id.toString())
        .set(data); 
  }
}
