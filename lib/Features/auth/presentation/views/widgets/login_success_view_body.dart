import 'package:e_commerce_app/core/utils/app_router.dart';
import 'package:e_commerce_app/core/utils/app_router2.dart';
import 'package:e_commerce_app/core/utils/widgets/custom_button.dart';
import 'package:e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginSuccessViewBody extends StatelessWidget {
  const LoginSuccessViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight * .04),
        Image.asset(
          'assets/images/success.png',
          height: SizeConfig.screenHeight * .4,
        ),
        SizedBox(height: SizeConfig.screenHeight * .08),
        Text(
          'Login Success',
          style: TextStyle(
            color: Colors.black,
            fontSize: getProportionateScreenWidth(30),
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(
          flex: 2,
        ),
        SizedBox(
          width: SizeConfig.screenWidth * .6,
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
