import 'package:toodum/source/features/task/domain/entity/task_entity.dart';

abstract class GetTaskUseCase {
  Future<List<TaskEntity>> call();
}
