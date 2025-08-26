import 'package:json_annotation/json_annotation.dart';
import 'package:toodum/source/features/task/domain/entity/task_entity.dart';

part 'task_model.g.dart';

enum TaskDifficulty { easy, medium, hard }
enum TaskType { recurrent, sole, other }

@JsonSerializable(createToJson: true)
final class TaskModel extends TaskEntity{
  const TaskModel({
    this.id,
    this.name = '',
    this.description = '',
    this.duration = '',
    this.date = '',
    this.difficulty = TaskDifficulty.easy,
    this.type = TaskType.sole,
    this.completed = false,
  });

  @override
  final String? id;

  @override
  final String name;

  @override
  final String description;

  @override
  final String duration;

  @override
  final String date;

  @override
  final TaskDifficulty difficulty;

  @override
  final TaskType type;

  @override
  final bool completed;

  TaskModel copyWith({
    String? id,
    String? name,
    String? description,
    String? duration,
    String? date,
    TaskDifficulty? difficulty,
    TaskType? type,
    bool? completed,
  }) {
    return TaskModel(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      duration: duration ?? this.duration,
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