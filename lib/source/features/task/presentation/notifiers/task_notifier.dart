import 'package:toodum/source/features/task/data/models/task_model.dart';

abstract class TaskNotifier {
  Future<void> init();

  Future<bool> createTask();

  void updateField(TaskModel Function(TaskModel) update);
}