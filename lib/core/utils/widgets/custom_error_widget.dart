import 'package:e_commerce_app/core/utils/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({
    super.key,
    required this.errorMessage,
    required this.onRetry,
  });

  final String errorMessage;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              errorMessage,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
            const Gap(20),
            CustomButton(
              text: 'Retry',
              onPressed: onRetry,
              size: Size(140, 40),
            )
          ],
        ),
      ),
    );
  }
}
