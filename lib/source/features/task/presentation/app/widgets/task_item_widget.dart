import 'package:flutter/material.dart';
import 'package:toodum/source/features/task/domain/entity/task_entity.dart';

final class TaskItemWidget extends StatelessWidget {
  const TaskItemWidget({super.key, required this.tasks, required this.task});

  final List<TaskEntity> tasks;
  final TaskEntity task;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(tasks.length.toString()),
        Text(task.id.toString()),
        Text(task.name),
        Text(task.description.toString()),
        Text(task.duration),
        Text(task.date),
        Text(task.difficulty.name),
        Text(task.type.name),
        Text(task.completed.toString()),
        const SizedBox(height: 24,),
      ],
    );
  }
}
