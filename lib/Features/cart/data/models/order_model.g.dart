// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrderModel _$OrderModelFromJson(Map<String, dynamic> json) => _OrderModel(
      id: json['id'] as String,
      userId: json['user_id'] as String,
      phoneNumber: json['phone_number'] as String?,
      address: json['address'] as String?,
      createdAt: const FieldValueSerializer().fromJson(json['created_at']),
      items: (json['items'] as List<dynamic>)
          .map((e) => ProductOrder.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OrderModelToJson(_OrderModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      if (instance.phoneNumber case final value?) 'phone_number': value,
      if (instance.address case final value?) 'address': value,
      if (const FieldValueSerializer().toJson(instance.createdAt)
          case final value?)
        'created_at': value,
      'items': instance.items.map((e) => e.toJson()).toList(),
    };
