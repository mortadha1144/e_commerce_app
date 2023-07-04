import 'package:e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';
import 'custom_social_card.dart';
import 'no_account_text.dart';
import 'sign_in_form.dart';

class SignInViewBody extends StatelessWidget {
  const SignInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: SizeConfig.screenHeight * .04,
                ),
                Text(
                  'Welcome Back',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'Sign in with your email and password  \nor continue with social media',
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * .08,
                ),
                const SignInForm(),
                SizedBox(
                  height: SizeConfig.screenHeight * .08,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomSocialCard(
                      icon: 'assets/icons/google-icon.svg',
                      onPressed: () {},
                    ),
                    CustomSocialCard(
                      icon: 'assets/icons/facebook-2.svg',
                      onPressed: () {},
                    ),
                    CustomSocialCard(
                      icon: 'assets/icons/twitter.svg',
                      onPressed: () {},
                    ),
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                const NoAccountText()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
