import 'package:e_commerce_app/Features/product/data/models/product_model.dart';
import 'package:e_commerce_app/core/utils/typedefs.dart';
import 'package:flutter/foundation.dart' show immutable;

@immutable
class AddOrDeleteProductInCartRequest {
  final ProductModel product;
  final UserId userId;
  final int quantity;

  const AddOrDeleteProductInCartRequest({
    required this.product,
    required this.userId,
    required this.quantity,
  });
}
