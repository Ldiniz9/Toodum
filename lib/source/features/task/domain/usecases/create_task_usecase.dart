import 'package:toodum/source/features/task/data/models/task_model.dart';
import 'package:toodum/source/shared/models/save_result.dart';

abstract class CreateTaskUseCase {
  Future<SaveResult> call({required TaskModel task});
}
