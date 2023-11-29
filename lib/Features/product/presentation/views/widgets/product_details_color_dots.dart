import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/widgets/rounded_icon_button.dart';
import '../../../../../size_config.dart';
import '../../providers/quantity_provider.dart';

class ProductDetailsColorDots extends ConsumerWidget {
  const ProductDetailsColorDots({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int selectedColor = 3;

    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
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
          const CounterWidget(),
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
      height: getProportionateScreenWidth(40),
      width: getProportionateScreenWidth(40),
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

class CounterWidget extends ConsumerWidget {
  const CounterWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        RoundedIconButton(
          iconData: Icons.remove,
          onPressed: ref.read(quantityProvider.notifier).decrement,
        ),
        SizedBox(width: getProportionateScreenWidth(15)),
        Text(
          ref.watch(quantityProvider).toString(),
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(width: getProportionateScreenWidth(15)),
        RoundedIconButton(
          iconData: Icons.add,
          onPressed: ref.read(quantityProvider.notifier).increment,
        ),
      ],
    );
  }
}
