// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductOrder _$ProductOrderFromJson(Map<String, dynamic> json) =>
    _ProductOrder(
      productId: (json['product_id'] as num).toInt(),
      qty: (json['qty'] as num).toInt(),
    );

Map<String, dynamic> _$ProductOrderToJson(_ProductOrder instance) =>
    <String, dynamic>{
      'product_id': instance.productId,
      'qty': instance.qty,
    };
