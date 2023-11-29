// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorites_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FavoritesModelImpl _$$FavoritesModelImplFromJson(Map<String, dynamic> json) =>
    _$FavoritesModelImpl(
      favoriteItems: (json['favoriteItems'] as List<dynamic>?)
              ?.map(
                  (e) => FavoriteItemModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$FavoritesModelImplToJson(
        _$FavoritesModelImpl instance) =>
    <String, dynamic>{
      'favoriteItems': instance.favoriteItems,
    };
