import 'package:e_commerce_app/core/utils/providers/provider.dart';
import 'package:e_commerce_app/core/utils/shared_preference/preference_helper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final preferenceHelperProvider = Provider<PreferenceHelper>(
  (ref) => PreferenceHelper(
    ref.read(sharedPreferencesProvider),
  ),
);
