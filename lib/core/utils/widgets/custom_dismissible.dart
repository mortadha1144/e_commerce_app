import 'package:e_commerce_app/core/utils/constants/assets.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomDismissible extends StatelessWidget {
  const CustomDismissible({
    required super.key,
    required this.child,
    required this.onDismissed,
  });

  final Widget child;
  final ValueChanged<DismissDirection>? onDismissed;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: key!,
      direction: DismissDirection.endToStart,
      background: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            color: const Color(0xFFFFE6E6),
            borderRadius: BorderRadius.circular(15)),
        child: Row(
          children: [
            const Spacer(),
            SvgPicture.asset(Assets.assetsIconsTrash),
          ],
        ),
      ),
      onDismissed: onDismissed,
      child: child,
    );
  }
}
