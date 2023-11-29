import 'package:e_commerce_app/Features/cart/data/models/cart_item_model.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_model.freezed.dart';
part 'cart_model.g.dart';

@freezed
class CartModel with _$CartModel {
  const CartModel._();
  
 const factory CartModel({
    @Default([]) List<CartItemModel> cartItems,
  }) = _CartModel;

  factory CartModel.fromJson(Map<String, dynamic> json) =>
      _$CartModelFromJson(json);
}