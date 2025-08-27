import 'package:injectable/injectable.dart';
import 'package:toodum/source/features/task/data/models/task_model.dart';
import 'package:toodum/source/features/task/domain/usecases/create_task_usecase.dart';
import 'package:toodum/source/features/task/domain/repositories/task_repository.dart';
import 'package:toodum/source/shared/models/save_result.dart';

@Injectable(as: CreateTaskUseCase)
final class CreateTaskUseCaseImpl implements CreateTaskUseCase {
  const CreateTaskUseCaseImpl(this._repository);

  final TaskRepository _repository;

  @override
  Future<SaveResult> call({required TaskModel task}) {
    return _repository.createTask(task: task);
  }
}
