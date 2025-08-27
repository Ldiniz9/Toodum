import 'package:flutter/material.dart';
import 'package:toodum/source/core/theme/style/theme_colors.dart';
import 'package:toodum/source/features/task/presentation/controllers/task_form_controllers.dart';
import 'package:toodum/source/shared/shared.dart';

final class TaskCreateWidget extends StatelessWidget {
  const TaskCreateWidget({
    super.key,
    required this.taskControllers,
    required this.onCreatePressed,
  });

  final TaskFormControllers taskControllers;
  final VoidCallback onCreatePressed;

  @override
  Widget build(BuildContext context) {
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
          ToomButtonWidget(
            onPressed: onCreatePressed,
            title: 'CRIAR TASK',
          ),
        ],
      ),
    );
  }
}
