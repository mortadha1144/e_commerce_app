import 'dart:async';

import 'package:e_commerce_app/constants.dart';
import 'package:e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/widgets/custom_button.dart';
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
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20),
                ),
                child: Column(
                  children: [
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        onBoardingData.length,
                        (index) => buidDot(index: index),
                      ),
                    ),
                    const Spacer(
                      flex: 3,
                    ),
                    CustomButton(
                      text: customButtonText,
                      onPressed: () {
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
                          GoRouter.of(context)
                              .push(AppRouter.kSigInView);
                        }
                      },
                    ),
                    const Spacer()
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buidDot({required int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : const Color(0xffD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
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
