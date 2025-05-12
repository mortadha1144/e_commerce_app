// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'named_object.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NamedObject _$NamedObjectFromJson(Map<String, dynamic> json) => NamedObject(
      name: json['name'] as String?,
      id: (json['id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$NamedObjectToJson(NamedObject instance) =>
    <String, dynamic>{
      if (instance.name case final value?) 'name': value,
      if (instance.id case final value?) 'id': value,
    };
