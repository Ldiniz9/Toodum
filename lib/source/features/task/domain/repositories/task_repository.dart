import 'package:toodum/source/features/task/domain/entity/task_entity.dart';

abstract class TaskRepository {

  Future<List<TaskEntity>> getTasks();
}
