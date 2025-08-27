import 'package:toodum/source/core/theme/widgets/theme_state_builder.dart';
import 'package:toodum/source/features/task/data/models/task_model.dart';
import 'package:toodum/source/features/task/domain/entity/task_entity.dart';

final class TaskState implements GenericStateBase {
  final TaskEntity task;
  final List<TaskEntity> tasks;

  @override
  final String stateError;

  @override
  final bool isStateLoading;

  const TaskState({
    this.task = const TaskModel(),
    this.tasks = const [],
    this.stateError = '',
    this.isStateLoading = false,
  });

  const TaskState.error(String message) : this(stateError: message);
  
  const TaskState.loading() : this(isStateLoading: true);

  const TaskState.success({List<TaskEntity> tasks = const [], TaskEntity task = const TaskModel()})
    : this(tasks: tasks, task: task);

  TaskState copyWith({
    TaskEntity? task,
    List<TaskEntity>? tasks,
    String? stateError,
    bool? isStateLoading,
  }) {
    return TaskState(
      task: task ?? this.task,
      tasks: tasks ?? this.tasks,
      stateError: stateError ?? this.stateError,
      isStateLoading: isStateLoading ?? this.isStateLoading,
    );
  }
}
