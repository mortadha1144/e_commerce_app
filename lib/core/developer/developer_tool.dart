import 'package:e_commerce_app/core/developer/developer_provider.dart';
import 'package:e_commerce_app/core/utils/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:floating_draggable_widget/floating_draggable_widget.dart';

class FloatingDeveloperToolBuilder extends HookConsumerWidget {
  const FloatingDeveloperToolBuilder({
    super.key,
    required this.child,
    required this.show,
  });

  final Widget child;
  final bool show;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (!show) return child;

    final state = ref.watch(developerProvider);

    final borderRadius = BorderRadius.circular(24.0);
    const size = 48.0;
    return FloatingDraggableWidget(
      mainScreenWidget: child,
      floatingWidgetHeight: size,
      floatingWidgetWidth: size,
      floatingWidget: Card(
        color: kPrimaryColor,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius,
        ),
        child: InkWell(
          borderRadius: borderRadius,
          onTap: () {},
          onLongPress: () {
            state.onLongPressed?.call();
          },
          child: const Icon(Icons.bug_report_outlined),
        ),
      ),
    );
  }
}
