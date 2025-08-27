import 'package:flutter/material.dart';
import 'package:toodum/source/features/task/domain/entity/task_entity.dart';

final class TaskFormControllers {
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();
  final dateController = TextEditingController();
  final timerController = TextEditingController();
  final taskDurationController = TextEditingController();
  final taskDifficultyController = TextEditingController();
  final taskTypeController = TextEditingController();

  void dispose() {
    titleController.dispose();
    descriptionController.dispose();
    dateController.dispose();
    timerController.dispose();
    taskDurationController.dispose();
    taskDifficultyController.dispose();
    taskTypeController.dispose();
  }

  void fill(TaskEntity task) {
    titleController.text = task.title;
    descriptionController.text = task.description;
    dateController.text = task.date;
    timerController.text = task.timer;
    taskDurationController.text = task.duration.toString();
    taskDifficultyController.text = task.difficulty.toString();
    taskTypeController.text = task.type.toString();
  }

  void clear() {
    titleController.clear();
    descriptionController.clear();
    dateController.clear();
    timerController.clear();
    taskDurationController.clear();
    taskDifficultyController.clear();
    taskTypeController.clear();
  }
}