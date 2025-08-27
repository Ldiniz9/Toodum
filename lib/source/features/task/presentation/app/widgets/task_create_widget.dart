import 'package:flutter/material.dart';
import 'package:toodum/source/core/theme/style/theme_colors.dart';
import 'package:toodum/source/features/task/domain/entity/task_entity.dart';
import 'package:toodum/source/features/task/presentation/controllers/task_form_controllers.dart';

final class TaskCreateWidget extends StatelessWidget {
  const TaskCreateWidget({super.key, required this.tasks, required this.task, required this.taskControllers});

  final List<TaskEntity> tasks;
  final TaskEntity task;
  final TaskFormControllers taskControllers;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      padding: EdgeInsets.symmetric(horizontal:24),
      decoration: BoxDecoration(
        color: ThemeColors.secondary,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ElevatedButton(onPressed: () {},child: Container(child:  Text(task.id.toString()),),),
          Text(task.title),
          Text(task.description.toString()),
          Text(task.duration.toString()),
          Text(task.date),
          Text(task.difficulty.name),
          Text(task.type.name),
          Text(task.completed.toString()),
        ],
      ),
    );
  }
}
