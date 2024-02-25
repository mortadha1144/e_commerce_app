import 'package:flutter/material.dart';
// ignore: implementation_imports
import 'package:form_validator/src/validator_builder.dart';

import 'locale.dart';
import 'rules.dart';

extension ValidationExtension on BuildContext {
  AppValidationBuilder validator({bool optional = false}) {
    return AppValidationBuilder(
      context: this,
      locale: AppFormValidatorLocale(this),
      optional: optional,
    );
  }
}

extension AppValidationBuilderX on ValidationBuilder {
  ValidationBuilder min(int amount) {
    return add((value) {
      if (value != null && value != '') {
        final number = int.parse(value);

        if (number < amount) {
          return 'Must be at least $amount';
        }
      }
      return null;
    });
  }

  // max
  ValidationBuilder max(int amount) {
    return add((value) {
      if (value != null && value != '') {
        final number = int.parse(value);

        if (number > amount) {
          return 'Must be at most $amount';
        }
      }
      return null;
    });
  }
}
