import 'dart:io';

import 'package:dio/dio.dart';
import 'package:e_commerce_app/core/utils/extensions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_exceptions.freezed.dart';

const String errorNotValidGoogleToken = "NOT_VALID_GOOGLE_TOKEN";
const String errorUnverifiedAccountToken = "ERROR_UNVERIFIED_ACCOUNT";
const String tokenError = "TOKEN_ERROR";
const String updateError = "update";

enum Update { force }

// const ResultState<LoginResponse> loginWrongUserType =
//     ResultState<LoginResponse>.error(NetworkExceptions.wrongUserType());

// ResultState<T> unverifiedAccountError<T>() =>
//     ResultState<T>.error(const NetworkExceptions.unverifiedAccount());

@freezed
class NetworkExceptions with _$NetworkExceptions {
  const factory NetworkExceptions.emailAlreadyInUse() = EmailAlreadyInUse;
  const factory NetworkExceptions.wrongPassword() = WrongPassword;
  // const factory NetworkExceptions.requestCancelled() = RequestCancelled;

  // const factory NetworkExceptions.httpError(Response response) = HttpError;

  // const factory NetworkExceptions.requestTimeout() = RequestTimeout;

  // const factory NetworkExceptions.sendTimeout() = SendTimeout;

  // const factory NetworkExceptions.noInternetConnection() = NoInternetConnection;

  // const factory NetworkExceptions.formatException() = FormatException;

  // const factory NetworkExceptions.unableToProcess() = UnableToProcess;

  const factory NetworkExceptions.unexpectedError() = UnexpectedError;

  // const factory NetworkExceptions.wrongUserType() = WrongUserType;

  // const factory NetworkExceptions.unverifiedAccount() = UnverifiedAccount;

  // const factory NetworkExceptions.tokenExpiredError(TokenErrorType type) =
  //     TokenExpiredError;
  // const factory NetworkExceptions.shouldUpdate(Update type) = ShouldUpdate;

  static NetworkExceptions getDioException(error) {
    if (error is Exception) {
      try {
        NetworkExceptions networkExceptions;
        // if (error is DioError) {
        // switch (error.type) {
        //   case DioErrorType.cancel:
        //     networkExceptions = const NetworkExceptions.requestCancelled();
        //     break;
        //   case DioErrorType.connectTimeout:
        //     networkExceptions = const NetworkExceptions.requestTimeout();
        //     break;
        //   case DioErrorType.receiveTimeout:
        //     networkExceptions = const NetworkExceptions.sendTimeout();
        //     break;
        //   case DioErrorType.response:
        //     final eDetail = Detail.fromJson(error.response!.data).details;

        //     if (error.response?.statusCode == 400 &&
        //         eDetail == errorUnverifiedAccountToken) {
        //       networkExceptions = const NetworkExceptions.unverifiedAccount();
        //       break;
        //     }

        //     if (error.response?.statusCode == 400 &&
        //         eDetail.contains(updateError)) {
        //       networkExceptions =
        //           const NetworkExceptions.shouldUpdate(Update.force);
        //       break;
        //     }
        //     networkExceptions = NetworkExceptions.httpError(error.response!);
        //     break;
        //   case DioErrorType.sendTimeout:
        //     networkExceptions = const NetworkExceptions.sendTimeout();
        //     break;
        //   case DioErrorType.other:
        //     networkExceptions =
        //         error.requestOptions.extra.containsKey(tokenError)
        //             ? NetworkExceptions.tokenExpiredError(
        //                 error.requestOptions.extra[tokenError])
        //             : const NetworkExceptions.noInternetConnection();
        //     break;
        // }
        // } else if (error is SocketException) {
        //   networkExceptions = const NetworkExceptions.noInternetConnection();
        // } else
        if (error is FirebaseAuthException) {
          switch (error.code) {
            case "email-already-in-use":
              networkExceptions = const NetworkExceptions.emailAlreadyInUse();
              break;
            case "wrong-password":
              networkExceptions = const NetworkExceptions.wrongPassword();
              break;
            default:
              networkExceptions = const NetworkExceptions.unexpectedError();
          }
        } else {
          networkExceptions = const NetworkExceptions.unexpectedError();
        }
        return networkExceptions;
      } on FormatException catch (_) {
        // return const NetworkExceptions.formatException();
        return const NetworkExceptions.unexpectedError();
      } catch (_) {
        return const NetworkExceptions.unexpectedError();
      }
    } else {
      // if (error.toString().contains("is not a subtype of")) {
      //   return const NetworkExceptions.unableToProcess();
      // } else {
      //   return const NetworkExceptions.unexpectedError();
      // }
      return const NetworkExceptions.unexpectedError();
    }
  }
}

extension NetworkErrorHandler on NetworkExceptions {
  String getDefaultErrorMessage(BuildContext context) {
    return getErrorMessage(NetworkErrorLocalizationsImpl(context));
  }

  String getErrorMessage(NetworkErrorLocalizations translation) {
    var errorMessage = "";
    when(
      emailAlreadyInUse: () {
        errorMessage = translation.emailAlreadyInUse;
      },
      wrongPassword: () {
        errorMessage = translation.wrongPassword;
      },
      unexpectedError: () {
        errorMessage = translation.httpUnexpectedError;
      },
    );
    // when(
    //   requestCancelled: () {
    //     errorMessage = translation.httpRequestCancel;
    //   },
    //   httpError: (Response response) {
    //     try {
    //       switch (response.statusCode) {
    //         case 413:
    //           errorMessage = translation.httpError413;
    //           break;
    //         default:
    //           errorMessage = Detail.fromJson(response.data).details;
    //       }
    //     } catch (e) {
    //       errorMessage = translation.unexpectedErrorOccurred;
    //     }
    //   },
    //   unexpectedError: () {
    //     errorMessage = translation.httpUnexpectedError;
    //   },
    //   requestTimeout: () {
    //     errorMessage = translation.httpTimeout;
    //   },
    //   noInternetConnection: () {
    //     errorMessage = translation.httpNoInternetConnection;
    //   },
    //   sendTimeout: () {
    //     errorMessage = translation.httpSendTimeout;
    //   },
    //   unableToProcess: () {
    //     if (kDebugMode) {
    //       errorMessage = "Unable to process the data backend error";
    //     } else {
    //       errorMessage = translation.httpUnexpectedErrorWithReport;
    //     }
    //   },
    //   formatException: () {
    //     errorMessage = translation.httpUnexpectedErrorWithReport;
    //   },
    //   wrongUserType: () {
    //     errorMessage = translation.httpUnexpectedErrorWithReport;
    //   },
    //   unverifiedAccount: () {
    //     errorMessage = translation.unverifiedAccountError;
    //   },
    //   tokenExpiredError: (type) {
    //     // Note: the 'type" is currently for logging purposes only
    //     errorMessage = translation.tokenExpiredError;
    //   },
    //   shouldUpdate: (Update type) {
    //     errorMessage = translation.pleaseUpdateApp;
    //   },
    // );
    return errorMessage;
  }
}

abstract class NetworkErrorLocalizations {
  String get emailAlreadyInUse;
  String get wrongPassword;
  String get httpUnexpectedError;
  // String get httpRequestCancel;
  // String get httpError413;
  // String get unexpectedErrorOccurred;
  // String get httpUnexpectedError;
  // String get httpTimeout;
  // String get httpNoInternetConnection;
  // String get httpSendTimeout;
  // String get httpUnexpectedErrorWithReport;
  // String get unverifiedAccountError;
  // String get tokenExpiredError;
  // String get pleaseUpdateApp;
}

class NetworkErrorLocalizationsImpl implements NetworkErrorLocalizations {
  final BuildContext context;

  const NetworkErrorLocalizationsImpl(this.context);

  @override
  String get emailAlreadyInUse => context.l10n.emailAlreadyInUse;

  @override
  String get wrongPassword => context.l10n.wrongPassword;
  
  @override
  String get httpUnexpectedError => context.l10n.http_unexpected_error;
  
  // @override
  // String get httpError413 => context.l10n.http_error_413;

  // @override
  // String get httpNoInternetConnection =>
  //     context.l10n.http_no_internet_connection;

  // @override
  // String get httpRequestCancel => context.l10n.http_request_cancel;

  // @override
  // String get httpSendTimeout => context.l10n.http_send_timeout;

  // @override
  // String get httpTimeout => context.l10n.http_timeout;

  // @override
  // String get httpUnexpectedError => context.l10n.http_unexpected_error;

  // @override
  // String get httpUnexpectedErrorWithReport =>
  //     context.l10n.http_unexpected_error_with_report;

  // @override
  // String get tokenExpiredError => context.l10n.token_expired_error;

  // @override
  // String get unexpectedErrorOccurred => context.l10n.unexpected_error_occurred;

  // @override
  // String get unverifiedAccountError => context.l10n.unverified_account_error;

  // @override
  // String get pleaseUpdateApp => context.l10n.please_update_app;
}
