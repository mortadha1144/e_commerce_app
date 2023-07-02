import 'package:flutter/material.dart';

import 'onboarding_page_view_item.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({
    super.key,
    required this.onBoardingData, this.onPageChanged,
  });

  final List<Map<String, String>> onBoardingData;
 final void Function(int)? onPageChanged;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      onPageChanged: onPageChanged,
      itemCount: onBoardingData.length,
      itemBuilder: (context, index) => OnBoardingPageViewItem(
        text: onBoardingData[index]['text']!,
        image: onBoardingData[index]['image']!,
      ),
    );
  }
}
