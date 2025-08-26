import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:toodum/source/core/theme/theme.dart';
import 'package:toodum/source/features/task/presentation/app/widgets/task_widget.dart';
import 'package:toodum/source/features/task/presentation/providers/task_providers.dart';
import 'package:toodum/source/shared/shared.dart';

final class TaskPage extends ConsumerStatefulWidget {
  const TaskPage({super.key});

  @override
  ConsumerState<TaskPage> createState() => _TaskPageState();
}

final class _TaskPageState extends ConsumerState<TaskPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      ref.read(taskNotifierProvider.notifier).init();
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(taskNotifierProvider);
    // final notifier = ref.read(taskNotifierProvider.notifier);

    return ThemeStateBuilder(
      state: state,
      loading: const AppLoadingWidget(appBarTitle: ''),
      error: AppErrorWidget(appBarTitle: '', error: state.stateError),
      success: TaskWidget(tasks: state.tasks),
    );
  }
}
