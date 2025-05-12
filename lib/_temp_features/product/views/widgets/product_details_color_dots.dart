import 'package:e_commerce_app/core/utils/constants/constants.dart';
import 'package:e_commerce_app/core/utils/widgets/counter_widget.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../providers/quantity_provider.dart';

class ProductDetailsColorDots extends ConsumerWidget {
  const ProductDetailsColorDots({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final quantity = ref.watch(quantityProvider);

    int selectedColor = 3;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          ...List.generate(
            productColors.length,
            (index) => ColorDot(
              color: productColors[index],
              isSelected: selectedColor == index,
            ),
          ),
          const Spacer(),
          CounterWidget(
            quantity: quantity,
            onIncrement: () => ref.read(quantityProvider.notifier).state++,
            onDecrement: quantity > 1
                ? () => ref.read(quantityProvider.notifier).state--
                : null,
          ),
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    super.key,
    required this.color,
    this.isSelected = false,
  });

  final Color color;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 2),
      padding: const EdgeInsets.all(8),
      height: 40,
      width: 40,
      decoration: BoxDecoration(
          // color: Color(0xFFF6625E),
          shape: BoxShape.circle,
          border: Border.all(
              color: isSelected ? kPrimaryColor : Colors.transparent)),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
