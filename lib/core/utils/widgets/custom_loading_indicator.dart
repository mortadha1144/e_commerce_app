import 'package:e_commerce_app/constants.dart';
import 'package:flutter/material.dart';

class CustomLoadingIndicator extends StatelessWidget {
  const CustomLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: kPrimaryColor,
        strokeWidth: 3,
      ),
    );
  }
}
