import 'dart:collection' show MapView;

import 'package:e_commerce_app/core/utils/constants/firebase_field_name.dart';
import 'package:e_commerce_app/core/utils/typedefs.dart';
import 'package:flutter/foundation.dart' show immutable;


@immutable
class UserInfoPayload extends MapView<String, String> {
  UserInfoPayload({
    required UserId userId,
    required String? displayName,
    required String? email,
  }) : super(
          {
            FirebaseFieldName.userId: userId,
            FirebaseFieldName.displayName: displayName ?? '',
            FirebaseFieldName.email: email ?? '',
          },
        );
}
