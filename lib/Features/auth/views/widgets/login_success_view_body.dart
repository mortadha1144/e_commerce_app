import 'package:e_commerce_app/core/utils/app_router.dart';
import 'package:e_commerce_app/core/utils/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginSuccessViewBody extends StatelessWidget {
  const LoginSuccessViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 4),
        Image.asset(
          'assets/images/success.png',
          height: 4,
        ),
        const SizedBox(height:8),
        const Text(
          'Login Success',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(
          flex: 2,
        ),
        SizedBox(
          width:60,
          child: CustomButton(
            text: 'Back To home',
            onPressed: () {
              context.push(RoutesDocument.homeView);
            },
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
