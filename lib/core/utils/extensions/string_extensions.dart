extension StringExtension on String {
  String? get toNullableString => isNotEmpty ? this : null;

  String formatPhoneNumber({
    int length = 4,
    String pattern = '*',
  }) {
    return substring(0, this.length - length) + (pattern * length);
  }
}
