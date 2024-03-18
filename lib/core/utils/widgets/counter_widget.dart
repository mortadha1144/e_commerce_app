import 'package:e_commerce_app/core/utils/widgets/rounded_icon_button.dart';
import 'package:flutter/material.dart';

class CounterWidget extends StatelessWidget {
  const CounterWidget({
    super.key,
    required this.quantity,
    required this.onIncrement,
    required this.onDecrement,
    this.buttonsBackgroundColor,
    this.buttonSize,
    this.buttonIconSize,
    this.deleteIcon,
  });

  final int quantity;
  final VoidCallback onIncrement;
  final VoidCallback? onDecrement;
  final Color? buttonsBackgroundColor;
  final double? buttonSize;
  final double? buttonIconSize;
  final IconData? deleteIcon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RoundedIconButton(
          iconData: deleteIcon ?? Icons.remove,
          onPressed: onDecrement,
          backgroundColor: buttonsBackgroundColor,
          size: buttonSize,
          iconSize: buttonIconSize,
        ),
        const SizedBox(width: 15),
        Text(
          quantity.toString(),
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const SizedBox(width: 15),
        RoundedIconButton(
          iconData: Icons.add,
          onPressed: onIncrement,
          backgroundColor: buttonsBackgroundColor,
          size: buttonSize,
          iconSize: buttonIconSize,
        ),
      ],
    );
  }
}
