import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:toodum/source/core/theme/theme.dart';
import 'package:toodum/source/features/landing/presentation/app/widgets/landing_widget.dart';
import 'package:toodum/source/features/landing/presentation/providers/landing_notifier_provider.dart';
import 'package:toodum/source/shared/widgets/app_error_widget.dart';
import 'package:toodum/source/shared/widgets/app_loading_widget.dart';

final class LandingPage extends ConsumerStatefulWidget {
  const LandingPage({super.key});

  @override
  ConsumerState<LandingPage> createState() => _WebLandingPageState();
}

final class _WebLandingPageState extends ConsumerState<LandingPage> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(landingNotifierProvider);

    return ThemeStateBuilder(
      state: state,
      loading: const AppLoadingWidget(appBarTitle: ''),
      error: AppErrorWidget(appBarTitle: '', error: state.stateError),
      success: LandingWidget(onSignInPressed: () => context.go('/')),
    );
  }
}
