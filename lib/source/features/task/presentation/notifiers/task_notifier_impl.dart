import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:toodum/source/features/task/data/models/task_model.dart';
import 'package:toodum/source/features/task/domain/usecases/create_task_usecase.dart';
import 'package:toodum/source/features/task/domain/usecases/get_task_usecase.dart';
import 'package:toodum/source/features/task/presentation/notifiers/task_notifier.dart';
import 'package:toodum/source/features/task/presentation/state/task_state.dart';

final class TaskNotifierImpl extends StateNotifier<TaskState> implements TaskNotifier {
  final GetTaskUseCase _getTaskUseCase;
  final CreateTaskUseCase _createTaskUseCase;

  TaskNotifierImpl({
    required CreateTaskUseCase createTaskUseCase,
    required GetTaskUseCase getTaskUseCase,
  }) : _getTaskUseCase = getTaskUseCase,
  _createTaskUseCase = createTaskUseCase,
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

  @override
  Future<bool> createTask() async {
    final result = await _createTaskUseCase(
      task: state.task as TaskModel,
    );

    if (!result.success) {
      state = state.copyWith(stateError: result.message);
    }
    state = state.copyWith(isStateLoading: false);
    final tasks = await _getTaskUseCase();
    state = state.copyWith(tasks: tasks);

    return true;
  }
}