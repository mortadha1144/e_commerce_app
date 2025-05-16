import 'dart:async';

import 'package:flutter/material.dart';

class TimeDeBouncer {
  TimeDeBouncer({required this.milliseconds});

  /// use for search operation and task that make many request
  ///
  /// cancel the next timer and start another one to preform operation
  final int milliseconds;
  Timer? _timer;

  run(VoidCallback action) {
    if (null != _timer) {
      _timer?.cancel();
    }
    _timer = Timer(Duration(milliseconds: milliseconds), action);
  }
}
