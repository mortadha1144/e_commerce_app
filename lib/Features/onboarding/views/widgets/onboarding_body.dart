import 'package:e_commerce_app/core/utils/app_router.dart';
import 'package:e_commerce_app/core/utils/providers/preference_helper_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'onboarding_action.dart';
import 'onboarding_page_view.dart';

class OnBoardingBody extends StatefulWidget {
  const OnBoardingBody({super.key});

  @override
  State<OnBoardingBody> createState() => _OnBoardingBodyState();
}

class _OnBoardingBodyState extends State<OnBoardingBody> {
  int currentPage = 0;
  List<Map<String, String>> onBoardingData = [
    {
      "text": "Welcome to Miwagy, Let’s shop!",
      "image": "assets/images/splash_1.png"
    },
    {
      "text": "We help people conect with store \naround their homes",
      "image": "assets/images/splash_2.png"
    },
    {
      "text": "We show the easy way to shop. \nJust stay at home with us",
      "image": "assets/images/splash_3.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: OnBoardingPageView(
                onBoardingData: onBoardingData,
                onPageChanged: (value) => setState(() {
                  currentPage = value;
                }),
              ),
            ),
            Expanded(
              flex: 2,
              child: Consumer(
                builder: (context, ref, child) => OnBoardingAction(
                  currentPage: currentPage,
                  itemCount: onBoardingData.length,
                  onPressed: ()  => ref
                        .read(preferenceHelperProvider)
                        .saveIsOnboardingShown()
                        .then(
                          (_) => context.push(RoutesDocument.login),
                        ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
