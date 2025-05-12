import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce_app/core/data/services/convertor/timestamp_serializer.dart';
import 'package:e_commerce_app/features/cart/data/models/product_order.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_model.freezed.dart';
part 'order_model.g.dart';

@freezed
abstract class OrderModel with _$OrderModel {
  @JsonSerializable(
    converters: [FieldValueSerializer()],
  )
  const factory OrderModel({
    required String id,
    required String userId,
    required String? phoneNumber,
    required String? address,
    required FieldValue createdAt,
    required List<ProductOrder> items,
  }) = _OrderModel;

  factory OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);
}
