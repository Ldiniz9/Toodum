import 'package:injectable/injectable.dart';
import 'package:toodum/source/features/task/data/usecases/get_task_usecase.dart';
import 'package:toodum/source/features/task/domain/entity/task_entity.dart';
import 'package:toodum/source/features/task/domain/repositories/task_repository.dart';

@Injectable(as: GetTaskUseCase)
final class GetTaskUseCaseImpl implements GetTaskUseCase {
  const GetTaskUseCaseImpl(this._repository);

  final TaskRepository _repository;

  @override
  Future<List<TaskEntity>> call() {
    return _repository.getTasks();
  }
}
