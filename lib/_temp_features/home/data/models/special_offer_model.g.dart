// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'special_offer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SpecialOfferModel _$SpecialOfferModelFromJson(Map<String, dynamic> json) =>
    _SpecialOfferModel(
      id: (json['id'] as num).toInt(),
      category: json['category'] == null
          ? null
          : NamedObject.fromJson(json['category'] as Map<String, dynamic>),
      subCategory: json['sub_category'] == null
          ? null
          : NamedObject.fromJson(json['sub_category'] as Map<String, dynamic>),
      nofBrands: (json['nof_brands'] as num).toInt(),
      image: json['image'] as String,
    );

Map<String, dynamic> _$SpecialOfferModelToJson(_SpecialOfferModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      if (instance.category?.toJson() case final value?) 'category': value,
      if (instance.subCategory?.toJson() case final value?)
        'sub_category': value,
      'nof_brands': instance.nofBrands,
      'image': instance.image,
    };
