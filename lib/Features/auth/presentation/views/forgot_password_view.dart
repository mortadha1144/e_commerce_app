import 'package:flutter/material.dart';

import 'widgets/forgot_password_view_body.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forgot Passwod'),
      ),
      body: const ForgotPasswordViewBody(),
    );
  }
}
