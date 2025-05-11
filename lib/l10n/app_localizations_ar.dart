// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get emailAlreadyInUse => 'الايميل مستخدم بالفعل';

  @override
  String get http_unexpected_error => 'حدث خطأ غير متوقع';

  @override
  String get wrongPassword => 'كلمة المرور خاطئة';

  @override
  String get invalidEmail => 'الايميل غير صحيح';

  @override
  String get operationNotAllowed => 'هذا الحساب غير فعال';

  @override
  String get weakPassword => 'كلمة المرور ضعيفة';

  @override
  String get userDisabled => 'هذا الحساب غير فعال';

  @override
  String get userNotFound => 'الحساب غير موجود';

  @override
  String get authInvalidEmail => 'الايميل غير صحيح';

  @override
  String get authUserNotFound => 'الحساب غير موجود';

  @override
  String get chooseYourLanguage => 'اختر لغتك';

  @override
  String get next => 'التالي';

  @override
  String validationMaxLength(Object n) {
    return 'max length is $n';
  }

  @override
  String validationMinLength(Object n) {
    return 'min length is $n';
  }

  @override
  String get validationRequired => 'this field is required';

  @override
  String get validationUrl => 'invalid url';

  @override
  String get invalidPhoneNumber => 'invalid phone number';

  @override
  String get password => 'Password';

  @override
  String get welcomeBack => 'Welcome Back';

  @override
  String get signInWithEmailAndPassword => 'Sign in with your email and password  \nor continue with social media';

  @override
  String get email => 'Email';

  @override
  String get emailHint => 'Enter your email';

  @override
  String get passwordHint => 'Enter your password';

  @override
  String get rememberMe => 'Remember me';

  @override
  String get forgotPasswordQ => 'Forgot password?';

  @override
  String get forgotPassword => 'Forgot password';

  @override
  String get login => 'Login';

  @override
  String get continueText => 'Continue';

  @override
  String get pleaseEnterYourEmailToResetPassword => 'Please enter your email and we will send \nyou a link to return to your account';

  @override
  String get signUp => 'Sign Up';

  @override
  String get registerAccount => 'Register Account';

  @override
  String get completeProfile => 'Complete Profile';

  @override
  String get completeYourDetails => 'Complete your details or continue \nwith social media';

  @override
  String get byContinuingYourConfirm => 'By continuing your confirm that you agree \nwith our Term and Condition';

  @override
  String get passwordDoesNotMatch => 'Password does not match';

  @override
  String get displayName => 'Display Name';

  @override
  String get displayNameHint => 'Enter your name';

  @override
  String get phoneNumber => 'Phone Number';

  @override
  String get phoneNumberHint => 'Enter your phone number';

  @override
  String get address => 'Address';

  @override
  String get addressHint => 'Enter your address';

  @override
  String get back => 'Back';

  @override
  String get accountCreatedSuccessfully => 'Account created successfully';

  @override
  String get productAddedToCart => 'Product Added to cart successfully';
}
