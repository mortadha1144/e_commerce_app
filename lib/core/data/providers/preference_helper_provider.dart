import 'package:e_commerce_app/core/data/providers/provider.dart';
import 'package:e_commerce_app/core/data/shared_preference/preference_helper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final preferenceHelperProvider = Provider<PreferenceHelper>(
  (ref) => PreferenceHelper(
    ref.read(sharedPreferencesProvider),
  ),
);
