import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:toodum/source/features/task/data/usecases/get_task_usecase.dart';
import 'package:toodum/source/features/task/presentation/notifiers/task_notifier.dart';
import 'package:toodum/source/features/task/presentation/state/task_state.dart';

final class TaskNotifierImpl extends StateNotifier<TaskState> implements TaskNotifier {
  final GetTaskUseCase _getTaskUseCase;

  TaskNotifierImpl({
    required GetTaskUseCase getTaskUseCase,
  }) : _getTaskUseCase = getTaskUseCase,
  super(TaskState.loading());

  @override
  Future<void> init() async{
    try {
      final tasks = await _getTaskUseCase();

      state = TaskState.success(tasks: tasks);

    } catch (e){
      state = TaskState.error(e.toString());
    }
  }
}