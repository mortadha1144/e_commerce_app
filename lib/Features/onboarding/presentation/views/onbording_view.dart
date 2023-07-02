import 'package:e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';

import 'widgets/onboarding_body.dart';

class OnBordingView extends StatelessWidget {
  const OnBordingView({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      body: OnBoardingBody(),
    );
  }
}
