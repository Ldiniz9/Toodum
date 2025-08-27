import 'package:toodum/source/features/task/data/models/task_model.dart';

abstract class TaskEntity {
  const TaskEntity();

  String? get id;

  String get title;

  String get description;

  String get date;

  TaskDuration get duration;

  TaskDifficulty get difficulty;

  TaskType get type;

  bool get completed;

}