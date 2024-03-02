// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'special_offer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpecialOfferModelImpl _$$SpecialOfferModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SpecialOfferModelImpl(
      id: json['id'] as int,
      category: json['category'] == null
          ? null
          : NamedObject.fromJson(json['category'] as Map<String, dynamic>),
      subCategory: json['subCategory'] == null
          ? null
          : NamedObject.fromJson(json['subCategory'] as Map<String, dynamic>),
      nofBrands: json['nofBrands'] as int,
      image: json['image'] as String,
    );
