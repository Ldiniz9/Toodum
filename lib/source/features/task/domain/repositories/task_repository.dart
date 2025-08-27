import 'package:toodum/source/features/task/data/models/task_model.dart';
import 'package:toodum/source/features/task/domain/entity/task_entity.dart';
import 'package:toodum/source/shared/models/save_result.dart';

abstract class TaskRepository {

  Future<SaveResult> createTask({required TaskModel task});

  Future<List<TaskEntity>> getTasks();
}
