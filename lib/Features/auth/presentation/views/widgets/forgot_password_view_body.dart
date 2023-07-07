import 'package:e_commerce_app/Features/auth/presentation/views/widgets/custom_form_error.dart';
import 'package:e_commerce_app/Features/auth/presentation/views/widgets/no_account_text.dart';
import 'package:e_commerce_app/core/utils/widgets/custom_button.dart';
import 'package:e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import 'custom_suffix_icon.dart';
import 'forgot_password_form.dart';

class ForgotPasswordViewBody extends StatelessWidget {
  const ForgotPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenHeight * .04,
              ),
              Text(
                'Forgot Password',
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(28),
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'Please enter your email and we will send \nyou a link to return to your account',
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeConfig.screenHeight * .1,
              ),
              const ForgotPassForm()
            ],
          ),
        ),
      ),
    );
  }
}

