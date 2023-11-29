// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FavoriteItemModelImpl _$$FavoriteItemModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FavoriteItemModelImpl(
      product: ProductModel.fromJson(json['product'] as Map<String, dynamic>),
      date: DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$$FavoriteItemModelImplToJson(
        _$FavoriteItemModelImpl instance) =>
    <String, dynamic>{
      'product': instance.product,
      'date': instance.date.toIso8601String(),
    };
