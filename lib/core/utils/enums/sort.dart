import 'package:freezed_annotation/freezed_annotation.dart';

part 'sort.freezed.dart';
part 'sort.g.dart';

@freezed
abstract class Sort with _$Sort {
  const factory Sort({
    required String value,
    required bool descending,
  }) = _Sort;
  const Sort._();

  factory Sort.clear() => Sort(value: 'clear', descending: false);

  factory Sort.fromJson(Map<String, dynamic> json) => _$SortFromJson(json);
}
