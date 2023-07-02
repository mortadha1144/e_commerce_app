import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_router.dart';
import 'onboarding_action.dart';
import 'onboarding_page_view.dart';

class OnBoardingBody extends StatefulWidget {
  const OnBoardingBody({super.key});

  @override
  State<OnBoardingBody> createState() => _OnBoardingBodyState();
}

class _OnBoardingBodyState extends State<OnBoardingBody> {
  late PageController _pageController;
  String customButtonText = 'Next';
  int currentPage = 0;
  late Timer _timer;
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
  void initState() {
    _pageController = PageController();
    super.initState();
    animateToPageTimer();
  }

  @override
  void dispose() {
    _pageController.dispose();
    _timer.cancel();
    super.dispose();
  }

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
                controller: _pageController,
                onBoardingData: onBoardingData,
                onPageChanged: (value) => setState(() {
                  currentPage = value;
                }),
              ),
            ),
            Expanded(
              flex: 2,
              child: OnBoardingAction(
                currentPage: currentPage,
                itemCount: onBoardingData.length,
                customButtonText: customButtonText,
                onPressed: () {
                  onPressedCustomButton(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onPressedCustomButton(BuildContext context) {
    if (currentPage < 2) {
      setState(() {
        if (currentPage == 1) {
          customButtonText = 'Continue';
        }
        currentPage++;
        _pageController.nextPage(
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeIn,
        );
      });
    } else {
      GoRouter.of(context).push(AppRouter.kLoginView);
    }
  }

  void animateToPageTimer() {
    _timer = Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      if (currentPage < 2) {
        if (currentPage == 1) {
          customButtonText = 'Continue';
        }
        currentPage++;
      } else {
        currentPage = 0;
      }
      _pageController.animateToPage(
        currentPage,
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeIn,
      );
    });
  }
}
