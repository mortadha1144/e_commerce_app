
import 'package:e_commerce_app/core/utils/widgets/custom_button.dart';
import 'package:e_commerce_app/features/cart/providers/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SubmitOrderDialog extends ConsumerWidget {
  const SubmitOrderDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final total = ref.watch(totalPricesProvider);
    return AlertDialog(
      title: const Text('Confirm Order'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Are you sure you want to submit this order?',
          ),
          const SizedBox(height: 20),
          Text(
            'The total amount is \$$total',
          ),
        ],
      ),
      contentPadding:
          const EdgeInsets.only(top: 20, right: 20, left: 20, bottom: 40),
      actionsAlignment: MainAxisAlignment.spaceBetween,
      actions: [
        CustomButton(
          onPressed: () => context.pop(false),
          text: 'Cancel',
          backgroundColor: Colors.white,
          size: const Size(100, 40),
          fontSize: 14,
        ),
        CustomButton(
          onPressed: () => context.pop(true),
          text: 'Submit',
          size: const Size(100, 40),
          fontSize: 14,
        ),
      ],
    );
  }
}
