import 'package:toodum/source/features/task/data/models/task_model.dart';

abstract class TaskEntity {
  const TaskEntity();

  String? get id;

  String get name;

  String get description;

  String get duration;

  String get date;

  TaskDifficulty get difficulty;

  TaskType get type;

  bool get completed;

}