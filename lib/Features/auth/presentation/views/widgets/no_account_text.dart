import 'package:e_commerce_app/core/utils/app_router.dart';
import 'package:e_commerce_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../constants.dart';
import '../../../../../size_config.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Don’t have an account?',
          style: TextStyle(fontSize: getProportionateScreenWidth(16)),
        ),
        GestureDetector(
          onTap: () {
            GoRouter.of(context).push(RoutesDocument.signUp);
          },
          child: Text(
            'Sign Up',
            style: TextStyle(
              fontSize: getProportionateScreenWidth(16),
              color: kPrimaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
