import 'package:e_commerce_app/constants.dart';
import 'package:flutter/material.dart';

import '../../../../../size_config.dart';
import 'custom_social_card.dart';
import 'sign_up_form.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenHeight * .03,
              ),
              Text(
                'Register Account',
                style: headingStyle,
              ),
              const Text(
                'Complete your details or continue \nwith social media',
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeConfig.screenHeight * .07,
              ),
              const SignUpForm(),
              SizedBox(
                height: SizeConfig.screenHeight * .07,
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
              Text(
                'By continuing your confirm that you agree \nwith our Term and Condition',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodySmall,
              )
            ],
          ),
        ),
      ),
    );
  }
}
