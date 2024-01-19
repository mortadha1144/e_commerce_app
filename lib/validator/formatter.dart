import 'package:flutter/services.dart';

class PhoneLocaleInputFormatter extends TextInputFormatter {
  const PhoneLocaleInputFormatter();

  @override
  TextEditingValue formatEditUpdate(oldValue, newValue) {
    final text = _toEnglishNumbers(newValue.text);

    return TextEditingValue(
      text: text,
      selection: newValue.selection,
    );
  }
}

String _toEnglishNumbers(String value) {
  return value
      .replaceAll("٠", "0")
      .replaceAll("١", "1")
      .replaceAll("٢", "2")
      .replaceAll("٣", "3")
      .replaceAll("٤", "4")
      .replaceAll("٥", "5")
      .replaceAll("٦", "6")
      .replaceAll("٧", "7")
      .replaceAll("٨", "8")
      .replaceAll("٩", "9");
}
