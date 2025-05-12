import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_order.freezed.dart';
part 'product_order.g.dart';

@freezed
abstract class ProductOrder with _$ProductOrder {
  const factory ProductOrder({
    required int productId,
    required int qty,
  }) = _ProductOrder;

  factory ProductOrder.fromJson(Map<String, dynamic> json) =>
      _$ProductOrderFromJson(json);
}
