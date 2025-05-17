// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get emailAlreadyInUse => 'The email address is already in use by another account.';

  @override
  String get http_unexpected_error => 'Unexpected error occurred';

  @override
  String get wrongPassword => 'Wrong password provided for that user.';

  @override
  String get invalidEmail => 'The email provided is invalid.';

  @override
  String get operationNotAllowed => 'This account isn\'t enabled.';

  @override
  String get weakPassword => 'The password provided is too weak.';

  @override
  String get userDisabled => 'This user has been disabled.';

  @override
  String get userNotFound => 'No user found for that email.';

  @override
  String get authInvalidEmail => 'The email provided is invalid.';

  @override
  String get authUserNotFound => 'No user found for that email.';

  @override
  String get chooseYourLanguage => 'Choose your language';

  @override
  String get next => 'Next';

  @override
  String validationMaxLength(num n) {
    return 'max length is $n';
  }

  @override
  String validationMinLength(num n) {
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

  @override
  String get confirmLogoutLabel => 'Confirm Logout';

  @override
  String get areYouSureLogout => 'Are you sure you want to logout?';

  @override
  String get cancelLabel => 'Cancel';

  @override
  String get logoutLabel => 'Logout';

  @override
  String get defaultErrorMessage => 'Please try again later';

  @override
  String get noInternetErrorMessage => 'No internet connection';

  @override
  String get noAccountLabel => 'Don\'t have an account?';

  @override
  String get fullNameLabel => 'Full Name';

  @override
  String get fullNameHint => 'Enter your full name';

  @override
  String get otpVerificationLabel => 'OTP Verification';

  @override
  String validationLengthMessage(num length) {
    return 'This field must be contain $length characters';
  }
}
