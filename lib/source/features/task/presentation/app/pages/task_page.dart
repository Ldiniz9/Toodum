import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:toodum/source/core/theme/theme.dart';
import 'package:toodum/source/features/landing/presentation/app/widgets/landing_widget.dart';
import 'package:toodum/source/features/landing/presentation/providers/landing_notifier_provider.dart';
import 'package:toodum/source/shared/shared.dart';

final class TaskPage extends ConsumerStatefulWidget {
  const TaskPage({super.key});

  @override
  ConsumerState<TaskPage> createState() => _TaskPageState();
}

final class _TaskPageState extends ConsumerState<TaskPage> {
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
