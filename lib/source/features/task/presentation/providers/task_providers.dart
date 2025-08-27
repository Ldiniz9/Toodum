import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:toodum/source/features/task/data/datasources/task_datasource.dart';
import 'package:toodum/source/features/task/data/datasources/task_datasource_mock.dart';
import 'package:toodum/source/features/task/data/repositories/task_repository_impl.dart';
import 'package:toodum/source/features/task/domain/usecases/create_task_usecase.dart';
import 'package:toodum/source/features/task/domain/usecases/create_task_usecase_impl.dart';
import 'package:toodum/source/features/task/domain/usecases/get_task_usecase.dart';
import 'package:toodum/source/features/task/domain/usecases/get_task_usecase_impl.dart';
import 'package:toodum/source/features/task/domain/repositories/task_repository.dart';
import 'package:toodum/source/features/task/presentation/notifiers/task_notifier_impl.dart';
import 'package:toodum/source/features/task/presentation/state/task_state.dart';

final taskDataSourceProvider = Provider<TaskDataSource>((ref) {
  return const TaskDataSourceMock();
});

final taskRepositoryProvider = Provider<TaskRepository>((ref) {
  return TaskRepositoryImpl(ref.watch(taskDataSourceProvider));
});

final getTaskUseCaseProvider = Provider<GetTaskUseCase>((ref) {
  return GetTaskUseCaseImpl(ref.watch(taskRepositoryProvider));
});

final createTaskUseCaseProvider = Provider<CreateTaskUseCase>((ref) {
  return CreateTaskUseCaseImpl(ref.watch(taskRepositoryProvider));
});

final taskNotifierProvider = StateNotifierProvider<TaskNotifierImpl, TaskState>(
  (ref) {
    return TaskNotifierImpl(
      getTaskUseCase: ref.read(getTaskUseCaseProvider),
      createTaskUseCase: ref.read(createTaskUseCaseProvider),
    );
  },
);
