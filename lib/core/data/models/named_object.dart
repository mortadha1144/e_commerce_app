import 'package:flutter/foundation.dart' show immutable;
import 'package:json_annotation/json_annotation.dart';

part 'named_object.g.dart';

@JsonSerializable()
@immutable
class NamedObject {
  const NamedObject({required this.name, required this.id});

  factory NamedObject.fromJson(Map<String, dynamic> json) =>
      _$NamedObjectFromJson(json);
  final String? name;
  final int? id;

  Map<String, dynamic> toJson() => _$NamedObjectToJson(this);
}
