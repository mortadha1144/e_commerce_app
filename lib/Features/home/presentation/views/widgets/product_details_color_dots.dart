import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/widgets/rounded_icon_button.dart';
import '../../../../../size_config.dart';

class ProductDetailsColorDots extends StatelessWidget {
  const ProductDetailsColorDots({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
          RoundedIconButton(
            iconData: Icons.remove,
            onPressed: () {},
          ),
          SizedBox(width: getProportionateScreenWidth(15)),
          RoundedIconButton(
            iconData: Icons.add,
            onPressed: () {},
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