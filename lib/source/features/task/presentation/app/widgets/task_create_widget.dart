import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:toodum/source/core/theme/style/theme_colors.dart';
import 'package:toodum/source/features/task/presentation/controllers/task_form_controllers.dart';
import 'package:toodum/source/features/task/presentation/providers/task_providers.dart';
import 'package:toodum/source/shared/shared.dart';
import 'package:toodum/source/shared/widgets/input/toodum_input_text_widget.dart';

final class TaskCreateWidget extends ConsumerWidget {
  const TaskCreateWidget({
    super.key,
    required this.taskControllers,
    required this.onCreatePressed,
  });

  final TaskFormControllers taskControllers;
  final VoidCallback onCreatePressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.read(taskNotifierProvider.notifier);

    return Container(
      height: 200,
      padding: EdgeInsets.symmetric(horizontal: 24),
      decoration: BoxDecoration(
        color: ThemeColors.secondary,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: ThemeColors.purpleLight,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: ToodumInputWidget(
                          label: 'Title',
                          controller: taskControllers.titleController,
                          onChanged: (v) =>
                              notifier.updateField((m) => m.copyWith(title: v)),
                        ),
                      ),
                      Expanded(
                        child: ToodumInputWidget(
                          label: 'Description',
                          controller: taskControllers.descriptionController,
                          onChanged: (v) =>
                              notifier.updateField((m) => m.copyWith(description: v)),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Expanded(
                        child: ToodumInputWidget(
                          label: 'Data',
                          controller: taskControllers.dateController,
                          onChanged: (v) =>
                              notifier.updateField((m) => m.copyWith(date: v)),
                        ),
                      ),
                      Expanded(
                        child: ToodumInputWidget(
                          label: 'Duração',
                          controller: taskControllers.timerController,
                          onChanged: (v) =>
                              notifier.updateField((m) => m.copyWith(timer: v)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 12),
          ToodumButtonWidget(onPressed: onCreatePressed, title: 'CRIAR TASK'),
        ],
      ),
    );
  }
}
