import 'package:flutter/material.dart';

import 'widgets/login_success_view_body.dart';

class LoginSuccessView extends StatelessWidget {
  const LoginSuccessView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox.shrink(),
        title: const Text('Login Success'),
      ),
      body: const LoginSuccessViewBody(),
    );
  }
}
