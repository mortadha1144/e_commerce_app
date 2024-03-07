import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_order.freezed.dart';
part 'product_order.g.dart';

@Freezed(
  fromJson: false,
  toJson: true,
)
class ProductOrder with _$ProductOrder {
 

  @JsonSerializable(explicitToJson: true,createToJson: true,createFactory: false)
  const factory ProductOrder({
    required int productId,
    required int qty,
  }) = _ProductOrder;
}