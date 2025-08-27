// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TaskModel _$TaskModelFromJson(Map<String, dynamic> json) => TaskModel(
  id: json['id'] as String?,
  title: json['title'] as String? ?? '',
  description: json['description'] as String? ?? '',
  date: json['date'] as String? ?? '',
  timer: json['timer'] as String? ?? '',
  duration:
      $enumDecodeNullable(_$TaskDurationEnumMap, json['duration']) ??
      TaskDuration.daily,
  difficulty:
      $enumDecodeNullable(_$TaskDifficultyEnumMap, json['difficulty']) ??
      TaskDifficulty.easy,
  type: $enumDecodeNullable(_$TaskTypeEnumMap, json['type']) ?? TaskType.sole,
  completed: json['completed'] as bool? ?? false,
);

Map<String, dynamic> _$TaskModelToJson(TaskModel instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'description': instance.description,
  'date': instance.date,
  'timer': instance.timer,
  'duration': _$TaskDurationEnumMap[instance.duration]!,
  'difficulty': _$TaskDifficultyEnumMap[instance.difficulty]!,
  'type': _$TaskTypeEnumMap[instance.type]!,
  'completed': instance.completed,
};

const _$TaskDurationEnumMap = {
  TaskDuration.daily: 'daily',
  TaskDuration.weekly: 'weekly',
  TaskDuration.monthly: 'monthly',
  TaskDuration.annual: 'annual',
};

const _$TaskDifficultyEnumMap = {
  TaskDifficulty.easy: 'easy',
  TaskDifficulty.medium: 'medium',
  TaskDifficulty.hard: 'hard',
};

const _$TaskTypeEnumMap = {
  TaskType.recurrent: 'recurrent',
  TaskType.sole: 'sole',
  TaskType.other: 'other',
};
