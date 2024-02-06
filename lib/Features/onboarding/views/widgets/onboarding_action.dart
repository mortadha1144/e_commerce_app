import 'package:flutter/material.dart';

import '../../../../core/utils/widgets/custom_button.dart';
import '../../../../size_config.dart';
import 'custom_animated_container.dart';

class OnBoardingAction extends StatelessWidget {
  const OnBoardingAction({
    super.key,
    required this.currentPage,
    required this.itemCount,
    required this.onPressed,
  });

  final int currentPage;
  final int itemCount;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
      ),
      child: Column(
        children: [
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              itemCount,
              (index) => CustomAnimatedContainer(
                  currentPage: currentPage, index: index),
            ),
          ),
          const Spacer(
            flex: 3,
          ),
          CustomButton(
            text: 'Continue',
            onPressed: onPressed,
          ),
          const Spacer()
        ],
      ),
    );
  }
}
