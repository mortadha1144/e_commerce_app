import 'package:flutter/material.dart';

import 'onboarding_page_view_item.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({
    super.key,
    required this.onBoardingData, this.onPageChanged,  this.controller,
  });

  final List<Map<String, String>> onBoardingData;
 final void Function(int)? onPageChanged;
 final PageController? controller;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller,
      onPageChanged: onPageChanged,
      itemCount: onBoardingData.length,
      itemBuilder: (context, index) => OnBoardingPageViewItem(
        text: onBoardingData[index]['text']!,
        image: onBoardingData[index]['image']!,
      ),
    );
  }
}
