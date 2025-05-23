import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomFormError extends StatelessWidget {
  const CustomFormError({
    super.key,
    required this.errors,
  });

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
          errors.length, (index) => formErrorText(error: errors[index])),
    );
  }

  Row formErrorText({required String error}) {
    return Row(
      children: [
        SvgPicture.asset(
          'assets/icons/Error.svg',
          height: 14,
          width: 14,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          error,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
