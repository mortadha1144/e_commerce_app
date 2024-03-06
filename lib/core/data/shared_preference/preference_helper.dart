import 'package:shared_preferences/shared_preferences.dart';

class PreferenceHelper {
  final SharedPreferences _sharedPreference;

  const PreferenceHelper(this._sharedPreference);

  
  bool get isOnboardingShown {
    return _sharedPreference.getBool(PrefKeys.onboarding) ?? false;
  }

  Future<void> saveIsOnboardingShown() async {
    await _sharedPreference.setBool(PrefKeys.onboarding, true);
  }

  Future<void> clear() async {
    await _sharedPreference.clear();
  }
}

mixin PrefKeys {
  static const String isLoggedIn = "isLoggedIn";
  static const String authToken = "authToken";
  static const String user = 'user';
  static const String authentication = 'authentication';
  static const String settings = 'settings';
  static const String cart = 'cart';
  static const String favorite = 'favorite';
  static const String onboarding = 'onboarding';
}
