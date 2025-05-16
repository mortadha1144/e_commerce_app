import 'package:e_commerce_app/l10n/app_localizations.dart';
import 'package:flutter/material.dart';

import 'widgets/otp_view_body.dart';

class OtpView extends StatelessWidget {
  const OtpView({super.key, required this.phoneNumber});

  final String phoneNumber;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.otpVerificationLabel),
      ),
      body: OtpViewBody(phoneNumber: phoneNumber),
    );
  }
}
