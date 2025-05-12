import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo.freezed.dart';
part 'todo.g.dart';

@freezed
abstract class Todo with _$Todo {
  const factory Todo({
    required Nested nested,
  }) = _Todo;

  factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);
}

@freezed
abstract class Nested with _$Nested {
  const factory Nested({
    required String id,
  }) = _Nested;

  factory Nested.fromJson(Map<String, dynamic> json) => _$NestedFromJson(json);
}
