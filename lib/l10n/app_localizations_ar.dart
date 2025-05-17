// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get emailAlreadyInUse => 'الإيميل مستخدم بالفعل';

  @override
  String get http_unexpected_error => 'حدث خطأ غير متوقع';

  @override
  String get wrongPassword => 'كلمة المرور خاطئة';

  @override
  String get invalidEmail => 'الإيميل غير صحيح';

  @override
  String get operationNotAllowed => 'هذا الحساب غير فعال';

  @override
  String get weakPassword => 'كلمة المرور ضعيفة';

  @override
  String get userDisabled => 'هذا الحساب غير فعال';

  @override
  String get userNotFound => 'الحساب غير موجود';

  @override
  String get authInvalidEmail => 'الإيميل غير صحيح';

  @override
  String get authUserNotFound => 'الحساب غير موجود';

  @override
  String get chooseYourLanguage => 'اختر لغتك';

  @override
  String get next => 'التالي';

  @override
  String validationMaxLength(num n) {
    return 'الحد الأقصى هو $n';
  }

  @override
  String validationMinLength(num n) {
    return 'الحد الأدنى هو $n';
  }

  @override
  String get validationRequired => 'هذا الحقل مطلوب';

  @override
  String get validationUrl => 'رابط غير صالح';

  @override
  String get invalidPhoneNumber => 'رقم هاتف غير صالح';

  @override
  String get password => 'كلمة المرور';

  @override
  String get welcomeBack => 'مرحباً بعودتك';

  @override
  String get signInWithEmailAndPassword => 'قم بتسجيل الدخول باستخدام البريد الإلكتروني وكلمة المرور\nأو المتابعة باستخدام وسائل التواصل الاجتماعي';

  @override
  String get email => 'البريد الإلكتروني';

  @override
  String get emailHint => 'أدخل بريدك الإلكتروني';

  @override
  String get passwordHint => 'أدخل كلمة المرور';

  @override
  String get rememberMe => 'تذكرني';

  @override
  String get forgotPasswordQ => 'نسيت كلمة المرور؟';

  @override
  String get forgotPassword => 'نسيت كلمة المرور';

  @override
  String get login => 'تسجيل الدخول';

  @override
  String get continueText => 'متابعة';

  @override
  String get pleaseEnterYourEmailToResetPassword => 'الرجاء إدخال بريدك الإلكتروني وسنرسل لك\nرابطًا للعودة إلى حسابك';

  @override
  String get signUp => 'إنشاء حساب';

  @override
  String get registerAccount => 'تسجيل حساب';

  @override
  String get completeProfile => 'استكمال الملف الشخصي';

  @override
  String get completeYourDetails => 'أكمل بياناتك أو تابع\nباستخدام وسائل التواصل الاجتماعي';

  @override
  String get byContinuingYourConfirm => 'بالمتابعة أنت توافق على\nالشروط والأحكام الخاصة بنا';

  @override
  String get passwordDoesNotMatch => 'كلمة المرور غير متطابقة';

  @override
  String get displayName => 'الاسم المعروض';

  @override
  String get displayNameHint => 'أدخل اسمك';

  @override
  String get phoneNumber => 'رقم الهاتف';

  @override
  String get phoneNumberHint => 'أدخل رقم هاتفك';

  @override
  String get address => 'العنوان';

  @override
  String get addressHint => 'أدخل عنوانك';

  @override
  String get back => 'رجوع';

  @override
  String get accountCreatedSuccessfully => 'تم إنشاء الحساب بنجاح';

  @override
  String get productAddedToCart => 'تمت إضافة المنتج إلى سلة التسوق بنجاح';

  @override
  String get confirmLogoutLabel => 'تأكيد تسجيل الخروج';

  @override
  String get areYouSureLogout => 'هل أنت متأكد أنك تريد تسجيل الخروج؟';

  @override
  String get cancelLabel => 'إلغاء';

  @override
  String get logoutLabel => 'تسجيل الخروج';

  @override
  String get defaultErrorMessage => 'يرجى المحاولة في وقت اخر';

  @override
  String get noInternetErrorMessage => 'لا يوجد اتصال بالانترنت';

  @override
  String get noAccountLabel => 'ليس لديك حساب؟';

  @override
  String get fullNameLabel => 'الاسم الكامل';

  @override
  String get fullNameHint => 'أدخل اسمك الكامل';

  @override
  String get otpVerificationLabel => 'رمز التحقق';

  @override
  String validationLengthMessage(num length) {
    return 'يجب أن يحتوي هذا الحقل على $length حرفًا';
  }
}
