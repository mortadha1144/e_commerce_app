import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce_app/Features/product/data/models/product_model.dart';
import 'package:e_commerce_app/core/utils/constants/firebase_collection_name.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final productRepoProvider = Provider(
  (ref) => ProductRepo(),
);

class ProductRepo {
  CollectionReference<ProductModel> get getAllProducts => FirebaseFirestore
      .instance
      .collection(FirebaseCollectionName.products)
      .withConverter<ProductModel>(
        fromFirestore: (snapshot, _) => ProductModel.fromJson(snapshot.data()!),
        toFirestore: (product, _) => product.toJson(),
      );
}
