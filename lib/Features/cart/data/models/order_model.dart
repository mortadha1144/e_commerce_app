import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce_app/core/data/services/convertor/timestamp_serializer.dart';
import 'package:e_commerce_app/features/cart/data/models/product_order.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_model.g.dart';
part 'order_model.freezed.dart';

@Freezed(
  fromJson: false,
  toJson: true,
)
class OrderModel with _$OrderModel {
  @JsonSerializable(explicitToJson: true,createToJson: true,createFactory: false)
  const factory OrderModel({
    required String id,
    required String userId,
    required String? phoneNumber,
    required String? address,
    @JsonKey(toJson: fieldValueToJson) required FieldValue createdAt,
    required List<ProductOrder> items,
  }) = _OrderModel;


}
