import 'package:toodum/source/features/task/data/models/task_model.dart';
import 'package:toodum/source/shared/models/save_result.dart';

abstract class TaskDataSource {
  const TaskDataSource();

  Future<SaveResult> createTask({required TaskModel task});

  Future<List<TaskModel>> getTasks();
}