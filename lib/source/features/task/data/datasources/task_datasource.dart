import 'package:toodum/source/features/task/data/models/task_model.dart';

abstract class TaskDataSource {
  const TaskDataSource();

  Future<List<TaskModel>> getTasks();
}