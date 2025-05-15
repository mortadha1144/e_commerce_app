import 'package:e_commerce_app/core/data/shared_preferences/preference_helper.dart';
import 'package:e_commerce_app/core/data/shared_preferences/shared_preferences_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final preferenceHelperProvider = Provider<PreferenceHelper>(
  (ref) => PreferenceHelper(
    ref.read(sharedPreferencesProvider),
  ),
);
