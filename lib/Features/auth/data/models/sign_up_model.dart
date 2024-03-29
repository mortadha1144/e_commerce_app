// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_model.freezed.dart';
part 'sign_up_model.g.dart';

@Freezed(toJson: true, fromJson: false)
class SignUpModel with _$SignUpModel {
  factory SignUpModel({
    required String email,
    required String password,
    required String displayName,
    required String phoneNumber,
    required String address,
  }) = _SignUpModel;
}
