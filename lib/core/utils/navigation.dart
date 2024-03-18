import 'package:flutter/material.dart';

extension Navigation on BuildContext {
  void pushNativeRoute(Widget page) {
    Navigator.of(this).push(
      MaterialPageRoute(
        builder: (context) => page,
      ),
    );
  }
}
