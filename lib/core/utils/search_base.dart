import 'dart:async';

import 'package:flutter/material.dart';

class TimeDeBouncer {
  /// use for search operation and task that make many request
  ///
  /// cancel the next timer and start another one to preform operation
  final int milliseconds;
  Timer? _timer;

  TimeDeBouncer({required this.milliseconds});

  run(VoidCallback action) {
    if (null != _timer) {
      _timer?.cancel();
    }
    _timer = Timer(Duration(milliseconds: milliseconds), action);
  }
}
