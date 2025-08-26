import 'package:toodum/source/core/theme/widgets/theme_state_builder.dart';
import 'package:toodum/source/features/task/domain/entity/task_entity.dart';

final class TaskState implements GenericStateBase {
  final List<TaskEntity> tasks;

  @override
  final String stateError;

  @override
  final bool isStateLoading;

  const TaskState({
    this.tasks = const [],
    this.stateError = '',
    this.isStateLoading = false,
  });

  const TaskState.error(String message) : this(stateError: message);
  
  const TaskState.loading() : this(isStateLoading: true);

  const TaskState.success({List<TaskEntity> tasks = const []})
    : this(tasks: tasks);

  TaskState copyWith({
    List<TaskEntity>? tasks,
    String? stateError,
    bool? isStateLoading,
  }) {
    return TaskState(
      tasks: tasks ?? this.tasks,
      stateError: stateError ?? this.stateError,
      isStateLoading: isStateLoading ?? this.isStateLoading,
    );
  }
}
