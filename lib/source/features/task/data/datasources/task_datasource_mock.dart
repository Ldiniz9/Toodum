import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:toodum/source/core/inject/inject_env.dart';
import 'package:toodum/source/features/task/data/datasources/task_datasource.dart';
import 'package:toodum/source/features/task/data/mocks/task_mock.dart';
import 'package:toodum/source/features/task/data/models/task_model.dart';
import 'package:toodum/source/shared/models/save_result.dart';

@Injectable(as: TaskDataSource, env: [InjectEnv.mock])
final class TaskDataSourceMock implements TaskDataSource {
  const TaskDataSourceMock();

  @override
  Future<SaveResult> createTask({
    required TaskModel task,
  }) async {
    debugPrint('Saving task: ${task.toJson()}');
    return SaveResult.success('Save com sucesso.');
  }

  @override
  Future<List<TaskModel>> getTasks() async {
    await Future.delayed(const Duration(seconds: 1));

    return TaskMock.response
        .map((e) => TaskModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }
  
}