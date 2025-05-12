// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductsFilter _$ProductsFilterFromJson(Map<String, dynamic> json) =>
    _ProductsFilter(
      category: json['category'] == null
          ? null
          : NamedObject.fromJson(json['category'] as Map<String, dynamic>),
      subCategory: json['sub_category'] == null
          ? null
          : NamedObject.fromJson(json['sub_category'] as Map<String, dynamic>),
      sort: json['sort'] == null
          ? null
          : Sort.fromJson(json['sort'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductsFilterToJson(_ProductsFilter instance) =>
    <String, dynamic>{
      if (instance.category?.toJson() case final value?) 'category': value,
      if (instance.subCategory?.toJson() case final value?)
        'sub_category': value,
      if (instance.sort?.toJson() case final value?) 'sort': value,
    };
