import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en')
  ];

  /// No description provided for @emailAlreadyInUse.
  ///
  /// In ar, this message translates to:
  /// **'الايميل مستخدم بالفعل'**
  String get emailAlreadyInUse;

  /// No description provided for @http_unexpected_error.
  ///
  /// In ar, this message translates to:
  /// **'حدث خطأ غير متوقع'**
  String get http_unexpected_error;

  /// No description provided for @wrongPassword.
  ///
  /// In ar, this message translates to:
  /// **'كلمة المرور خاطئة'**
  String get wrongPassword;

  /// No description provided for @invalidEmail.
  ///
  /// In ar, this message translates to:
  /// **'الايميل غير صحيح'**
  String get invalidEmail;

  /// No description provided for @operationNotAllowed.
  ///
  /// In ar, this message translates to:
  /// **'هذا الحساب غير فعال'**
  String get operationNotAllowed;

  /// No description provided for @weakPassword.
  ///
  /// In ar, this message translates to:
  /// **'كلمة المرور ضعيفة'**
  String get weakPassword;

  /// No description provided for @userDisabled.
  ///
  /// In ar, this message translates to:
  /// **'هذا الحساب غير فعال'**
  String get userDisabled;

  /// No description provided for @userNotFound.
  ///
  /// In ar, this message translates to:
  /// **'الحساب غير موجود'**
  String get userNotFound;

  /// No description provided for @authInvalidEmail.
  ///
  /// In ar, this message translates to:
  /// **'الايميل غير صحيح'**
  String get authInvalidEmail;

  /// No description provided for @authUserNotFound.
  ///
  /// In ar, this message translates to:
  /// **'الحساب غير موجود'**
  String get authUserNotFound;

  /// No description provided for @chooseYourLanguage.
  ///
  /// In ar, this message translates to:
  /// **'اختر لغتك'**
  String get chooseYourLanguage;

  /// No description provided for @next.
  ///
  /// In ar, this message translates to:
  /// **'التالي'**
  String get next;

  /// No description provided for @validationMaxLength.
  ///
  /// In ar, this message translates to:
  /// **'الحد الأقصى هو {n}'**
  String validationMaxLength(num n);

  /// No description provided for @validationMinLength.
  ///
  /// In ar, this message translates to:
  /// **'الحد الأدنى هو {n}'**
  String validationMinLength(num n);

  /// No description provided for @validationRequired.
  ///
  /// In ar, this message translates to:
  /// **'هذا الحقل مطلوب'**
  String get validationRequired;

  /// No description provided for @validationUrl.
  ///
  /// In ar, this message translates to:
  /// **'رابط غير صالح'**
  String get validationUrl;

  /// No description provided for @invalidPhoneNumber.
  ///
  /// In ar, this message translates to:
  /// **'رقم هاتف غير صالح'**
  String get invalidPhoneNumber;

  /// No description provided for @password.
  ///
  /// In ar, this message translates to:
  /// **'كلمة المرور'**
  String get password;

  /// No description provided for @welcomeBack.
  ///
  /// In ar, this message translates to:
  /// **'مرحباً بعودتك'**
  String get welcomeBack;

  /// No description provided for @signInWithEmailAndPassword.
  ///
  /// In ar, this message translates to:
  /// **'قم بتسجيل الدخول باستخدام البريد الإلكتروني وكلمة المرور\nأو المتابعة باستخدام وسائل التواصل الاجتماعي'**
  String get signInWithEmailAndPassword;

  /// No description provided for @email.
  ///
  /// In ar, this message translates to:
  /// **'البريد الإلكتروني'**
  String get email;

  /// No description provided for @emailHint.
  ///
  /// In ar, this message translates to:
  /// **'أدخل بريدك الإلكتروني'**
  String get emailHint;

  /// No description provided for @passwordHint.
  ///
  /// In ar, this message translates to:
  /// **'أدخل كلمة المرور'**
  String get passwordHint;

  /// No description provided for @rememberMe.
  ///
  /// In ar, this message translates to:
  /// **'تذكرني'**
  String get rememberMe;

  /// No description provided for @forgotPasswordQ.
  ///
  /// In ar, this message translates to:
  /// **'نسيت كلمة المرور؟'**
  String get forgotPasswordQ;

  /// No description provided for @forgotPassword.
  ///
  /// In ar, this message translates to:
  /// **'نسيت كلمة المرور'**
  String get forgotPassword;

  /// No description provided for @login.
  ///
  /// In ar, this message translates to:
  /// **'تسجيل الدخول'**
  String get login;

  /// No description provided for @continueText.
  ///
  /// In ar, this message translates to:
  /// **'متابعة'**
  String get continueText;

  /// No description provided for @pleaseEnterYourEmailToResetPassword.
  ///
  /// In ar, this message translates to:
  /// **'الرجاء إدخال بريدك الإلكتروني وسنرسل لك\nرابطًا للعودة إلى حسابك'**
  String get pleaseEnterYourEmailToResetPassword;

  /// No description provided for @signUp.
  ///
  /// In ar, this message translates to:
  /// **'إنشاء حساب'**
  String get signUp;

  /// No description provided for @registerAccount.
  ///
  /// In ar, this message translates to:
  /// **'تسجيل حساب'**
  String get registerAccount;

  /// No description provided for @completeProfile.
  ///
  /// In ar, this message translates to:
  /// **'استكمال الملف الشخصي'**
  String get completeProfile;

  /// No description provided for @completeYourDetails.
  ///
  /// In ar, this message translates to:
  /// **'أكمل بياناتك أو تابع\nباستخدام وسائل التواصل الاجتماعي'**
  String get completeYourDetails;

  /// No description provided for @byContinuingYourConfirm.
  ///
  /// In ar, this message translates to:
  /// **'بالمتابعة أنت توافق على\nالشروط والأحكام الخاصة بنا'**
  String get byContinuingYourConfirm;

  /// No description provided for @passwordDoesNotMatch.
  ///
  /// In ar, this message translates to:
  /// **'كلمة المرور غير متطابقة'**
  String get passwordDoesNotMatch;

  /// No description provided for @displayName.
  ///
  /// In ar, this message translates to:
  /// **'الاسم المعروض'**
  String get displayName;

  /// No description provided for @displayNameHint.
  ///
  /// In ar, this message translates to:
  /// **'أدخل اسمك'**
  String get displayNameHint;

  /// No description provided for @phoneNumber.
  ///
  /// In ar, this message translates to:
  /// **'رقم الهاتف'**
  String get phoneNumber;

  /// No description provided for @phoneNumberHint.
  ///
  /// In ar, this message translates to:
  /// **'أدخل رقم هاتفك'**
  String get phoneNumberHint;

  /// No description provided for @address.
  ///
  /// In ar, this message translates to:
  /// **'العنوان'**
  String get address;

  /// No description provided for @addressHint.
  ///
  /// In ar, this message translates to:
  /// **'أدخل عنوانك'**
  String get addressHint;

  /// No description provided for @back.
  ///
  /// In ar, this message translates to:
  /// **'رجوع'**
  String get back;

  /// No description provided for @accountCreatedSuccessfully.
  ///
  /// In ar, this message translates to:
  /// **'تم إنشاء الحساب بنجاح'**
  String get accountCreatedSuccessfully;

  /// No description provided for @productAddedToCart.
  ///
  /// In ar, this message translates to:
  /// **'تمت إضافة المنتج إلى سلة التسوق بنجاح'**
  String get productAddedToCart;

  /// No description provided for @confirmLogoutLabel.
  ///
  /// In ar, this message translates to:
  /// **'تأكيد تسجيل الخروج'**
  String get confirmLogoutLabel;

  /// No description provided for @areYouSureLogout.
  ///
  /// In ar, this message translates to:
  /// **'هل أنت متأكد أنك تريد تسجيل الخروج؟'**
  String get areYouSureLogout;

  /// No description provided for @cancelLabel.
  ///
  /// In ar, this message translates to:
  /// **'إلغاء'**
  String get cancelLabel;

  /// No description provided for @logoutLabel.
  ///
  /// In ar, this message translates to:
  /// **'تسجيل الخروج'**
  String get logoutLabel;

  /// No description provided for @defaultErrorMessage.
  ///
  /// In ar, this message translates to:
  /// **'يرجى المحاولة في وقت اخر'**
  String get defaultErrorMessage;

  /// No description provided for @noInternetErrorMessage.
  ///
  /// In ar, this message translates to:
  /// **'لا يوجد اتصال بالانترنت'**
  String get noInternetErrorMessage;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
