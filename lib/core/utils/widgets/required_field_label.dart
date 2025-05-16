import 'package:flutter/material.dart';

class RequiredFieldLabel extends StatelessWidget {
  const RequiredFieldLabel({
    super.key,
    required this.label,
    this.optional = false,
  });

  final String label;
  final bool optional;

  @override
  Widget build(BuildContext context) {
    if (optional) return Text(label);

    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: label,
            style: DefaultTextStyle.of(context).style,
          ),
          TextSpan(
            text: ' *',
            style: TextStyle(color: Colors.red),
          ),
        ],
      ),
    );
  }
}
