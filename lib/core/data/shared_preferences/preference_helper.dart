import 'package:e_commerce_app/core/data/shared_preferences/preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferenceHelper {
  const PreferenceHelper(this._sharedPreference);

  final SharedPreferences _sharedPreference;

  bool get isOnboardingShown {
    return _sharedPreference.getBool(Preferences.onboarding) ?? false;
  }

  Future<void> saveIsOnboardingShown() async {
    await _sharedPreference.setBool(Preferences.onboarding, true);
  }

  Future<void> clear() async {
    await _sharedPreference.clear();
  }
}
