import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce_app/core/utils/constants/firebase_collection_name.dart';
import 'package:e_commerce_app/features/auth/providers/user_provider.dart';
import 'package:e_commerce_app/features/cart/data/models/order_model.dart';
import 'package:e_commerce_app/features/cart/data/models/product_order.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uuid/uuid.dart';

final cartRepoProvider = Provider.autoDispose<CartRepo>((ref) => CartRepo(ref));

class CartRepo {
  CartRepo(this._ref);
  final Ref _ref;

  Future<void> submitOrder({
    required List<ProductOrder> items,
  }) async {
    final id = const Uuid().v4();
    final user = _ref.read(userProvider);

    final order = OrderModel(
      id: id,
      userId: user!.uid,
      address: user.address,
      phoneNumber: user.phoneNumber,
      items: items,
      createdAt: FieldValue.serverTimestamp(),
    );
    final docRef = FirebaseFirestore.instance
        .collection(FirebaseCollectionName.orders)
        .doc();
    await docRef.set(order.toJson());
  }
}
