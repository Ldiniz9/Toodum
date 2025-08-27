import 'package:injectable/injectable.dart';
import 'package:toodum/source/features/task/data/datasources/task_datasource.dart';
import 'package:toodum/source/features/task/data/models/task_model.dart';
import 'package:toodum/source/features/task/domain/entity/task_entity.dart';
import 'package:toodum/source/features/task/domain/repositories/task_repository.dart';
import 'package:toodum/source/shared/models/save_result.dart';

@Injectable(as: TaskRepository)
final class TaskRepositoryImpl implements TaskRepository {
  final TaskDataSource _taskDataSource;

  const TaskRepositoryImpl(this._taskDataSource);

  @override
  Future<SaveResult> createTask({required TaskModel task}) async{
    return _taskDataSource.createTask(task: task);
  }

  @override
  Future<List<TaskEntity>> getTasks() async {
    return _taskDataSource.getTasks();
  }
}
