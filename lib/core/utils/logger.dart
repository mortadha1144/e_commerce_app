import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

/// Log output for production-safe console output.
///
class ProductionSafeConsoleOutput extends LogOutput {
  @override
  void output(OutputEvent event) {
    if (kDebugMode) {
      for (final line in event.lines) {
        print(line);
      }
    }
  }
}

/// A logger instance that uses [ProductionSafeConsoleOutput] as the log output.
final Logger logger = Logger(
  filter: DevelopmentFilter(),
  output: ProductionSafeConsoleOutput(),
  printer: PrettyPrinter(methodCount: 0),
);
