// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RatingModel _$RatingModelFromJson(Map<String, dynamic> json) => _RatingModel(
      rate: (json['rate'] as num).toDouble(),
      count: (json['count'] as num).toInt(),
    );

Map<String, dynamic> _$RatingModelToJson(_RatingModel instance) =>
    <String, dynamic>{
      'rate': instance.rate,
      'count': instance.count,
    };
