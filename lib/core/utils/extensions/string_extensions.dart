extension StringExtension on String {
  String? get toNullableString => isNotEmpty ? this : null;
}
