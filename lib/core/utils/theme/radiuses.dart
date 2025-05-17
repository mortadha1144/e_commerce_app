import 'package:flutter/material.dart';

/// A class that holds [double] values for insets.
abstract final class Radiuses {
  /// 100
  static const double full = 100;

  /// 32.0
  static const double extraLarge = 32.0;

  /// 16.0
  static const double large = 16.0;

  /// 12.0
  static const double medium = 12.0;

  /// 8.0
  static const double small = 8.0;

  /// 4.0
  static const double extraSmall = 4.0;

  /// 2.0
  static const double tiny = 2.0;

  /// 0.0
  static const double none = 0.0;
}

/// A class that holds [BorderRadius] values.
abstract final class BorderRadiuses {
  static const BorderRadius none = BorderRadius.all(
    Radius.circular(Radiuses.none),
  );

  static const BorderRadius extraSmall = BorderRadius.all(
    Radius.circular(Radiuses.extraSmall),
  );

  static const BorderRadius small = BorderRadius.all(
    Radius.circular(Radiuses.small),
  );

  static const BorderRadius medium = BorderRadius.all(
    Radius.circular(Radiuses.medium),
  );

  static const BorderRadius large = BorderRadius.all(
    Radius.circular(Radiuses.large),
  );

  static const BorderRadius extraLarge = BorderRadius.all(
    Radius.circular(Radiuses.extraLarge),
  );

  static const BorderRadius full = BorderRadius.all(
    Radius.circular(Radiuses.full),
  );
}
