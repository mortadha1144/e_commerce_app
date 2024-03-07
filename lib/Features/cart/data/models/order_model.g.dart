// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$$OrderModelImplToJson(_$OrderModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'phoneNumber': instance.phoneNumber,
      'address': instance.address,
      'createdAt': fieldValueToJson(instance.createdAt),
      'items': instance.items.map((e) => e.toJson()).toList(),
    };
