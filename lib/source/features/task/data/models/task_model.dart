import 'package:json_annotation/json_annotation.dart';
import 'package:toodum/source/features/task/domain/entity/task_entity.dart';

part 'task_model.g.dart';

enum TaskDifficulty { easy, medium, hard }
enum TaskType { recurrent, sole, other }
enum TaskDuration { daily, weekly, monthly, annual }

@JsonSerializable(createToJson: true)
final class TaskModel extends TaskEntity{
  const TaskModel({
    this.id,
    this.title = '',
    this.description = '',
    this.date = '',
    this.duration = TaskDuration.daily,
    this.difficulty = TaskDifficulty.easy,
    this.type = TaskType.sole,
    this.completed = false,
  });

  @override
  final String? id;

  @override
  final String title;

  @override
  final String description;

  @override
  final String date;

  @override
  final TaskDuration duration;

  @override
  final TaskDifficulty difficulty;

  @override
  final TaskType type;

  @override
  final bool completed;

  TaskModel copyWith({
    String? id,
    String? title,
    String? description,
    String? date,
    TaskDuration? duration,
    TaskDifficulty? difficulty,
    TaskType? type,
    bool? completed,
  }) {
    return TaskModel(
      id: id ?? this.id,
      title: title ?? this.title,
      duration: duration ?? this.duration,
      description: description ?? this.description,
      date: date ?? this.date,
      difficulty: difficulty ?? this.difficulty,
      type: type ?? this.type,
      completed: completed ?? this.completed,
    );
  }

  factory TaskModel.fromJson(Map<String, dynamic> json) =>
      _$TaskModelFromJson(json);

  Map<String, dynamic> toJson() => _$TaskModelToJson(this);
}