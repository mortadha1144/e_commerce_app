import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/Features/product/data/models/favorite_item_model.dart';
import 'package:e_commerce_app/Features/product/data/models/favorite_un_favorite_request.dart';
import 'package:e_commerce_app/Features/product/data/models/product_model.dart';
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

  

  

 

  
}
