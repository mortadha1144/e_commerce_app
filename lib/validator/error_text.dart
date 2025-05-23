import 'package:flutter/material.dart';

class ErrorText extends StatelessWidget {
  const ErrorText(
    this.text, {
    super.key,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsetsDirectional.only(start: 12.0),
      child: Text(
        text,
        style: theme.textTheme.bodySmall!.copyWith(
          color: theme.colorScheme.error,
        ),
      ),
    );
  }
}
