import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:toodum/source/core/theme/theme.dart';
import 'package:toodum/source/features/task/presentation/app/widgets/task_widget.dart';
import 'package:toodum/source/features/task/presentation/controllers/task_form_controllers.dart';
import 'package:toodum/source/features/task/presentation/notifiers/task_notifier_impl.dart';
import 'package:toodum/source/features/task/presentation/providers/task_providers.dart';
import 'package:toodum/source/features/task/presentation/state/task_state.dart';
import 'package:toodum/source/shared/shared.dart';

final class TaskPage extends ConsumerStatefulWidget {
  const TaskPage({super.key});

  @override
  ConsumerState<TaskPage> createState() => _TaskPageState();
}

final class _TaskPageState extends ConsumerState<TaskPage> {
  final controllers = TaskFormControllers();

  @override
  void dispose() {
    controllers.dispose();
    super.dispose();
  }

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
    final notifier = ref.read(taskNotifierProvider.notifier);

    return ThemeStateBuilder(
      state: state,
      loading: const AppLoadingWidget(appBarTitle: ''),
      error: AppErrorWidget(appBarTitle: '', error: state.stateError),
      success: TaskWidget(
        tasks: state.tasks,
        taskControllers: controllers,
        onCreatePressed: () => _onCreate(state: state, notifier: notifier),
      ),
    );
  }

  Future<void> _onCreate({
    required TaskState state,
    required TaskNotifierImpl notifier,
  }) async {
    // if (notifier.isValid) {
    // if (state.isEditing) {
    // await notifier.updateProduct();
    // } else {
    await notifier.createTask();
    // }
    // notifier.reset();
    controllers.clear();
    // } else {
    // notifier.getError();
    // }
  }
}
