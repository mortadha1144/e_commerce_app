// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Todo _$TodoFromJson(Map<String, dynamic> json) => _Todo(
      nested: Nested.fromJson(json['nested'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TodoToJson(_Todo instance) => <String, dynamic>{
      'nested': instance.nested.toJson(),
    };

_Nested _$NestedFromJson(Map<String, dynamic> json) => _Nested(
      id: json['id'] as String,
    );

Map<String, dynamic> _$NestedToJson(_Nested instance) => <String, dynamic>{
      'id': instance.id,
    };
