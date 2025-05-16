import 'package:e_commerce_app/core/utils/app_router.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'developer_provider.freezed.dart';
part 'developer_provider.g.dart';

@Freezed(
  fromJson: false,
  toJson: false,
  copyWith: true,
)
abstract class DeveloperState with _$DeveloperState {
  const DeveloperState._();

  const factory DeveloperState({
    String? pageName,
    VoidCallback? onLongPressed,
    Widget? currentPageTools,
  }) = _DeveloperState;
}

@riverpod
class Developer extends _$Developer {
  @override
  DeveloperState build() => const DeveloperState();

  void updateOnLoginPressed(VoidCallback? callback) {
    state = state.copyWith(onLongPressed: callback);
  }

  void updateCurrentPageTools(Widget? widget) {
    state = state.copyWith(currentPageTools: widget);
  }

  void updatePageName(String? pageName) {
    state = state.copyWith(pageName: pageName);
  }
}

void useDeveloperTool({
  required WidgetRef ref,
  VoidCallback? onLongPressed,
  WidgetBuilder? builder,
}) {
  final context = useContext();

  // TODO: Add isDeveloper to appSettingsProvider
  // if (!ref.read(appSettingsProvider).isDeveloper) return;

  final notifier = ref.read(developerProvider.notifier);
  final router = ref.read(appRouterProvider);

  // ignore: body_might_complete_normally_nullable
  useEffect(() {
    Future(() {
      notifier.updatePageName(router.routeInformationProvider.value.uri.path);
      notifier.updateOnLoginPressed(() {
        if (kDebugMode) print(router.routeInformationProvider.value.uri.path);
        return onLongPressed?.call();
      });
      // ignore: use_build_context_synchronously
      notifier.updateCurrentPageTools(builder?.call(context));

      return null;
    });
  });
}
