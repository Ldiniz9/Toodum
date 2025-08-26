// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TaskModel _$TaskModelFromJson(Map<String, dynamic> json) => TaskModel(
  id: json['id'] as String?,
  name: json['name'] as String? ?? '',
  description: json['description'] as String? ?? '',
  duration: json['duration'] as String? ?? '',
  date: json['date'] as String? ?? '',
  difficulty:
      $enumDecodeNullable(_$TaskDifficultyEnumMap, json['difficulty']) ??
      TaskDifficulty.easy,
  type: $enumDecodeNullable(_$TaskTypeEnumMap, json['type']) ?? TaskType.sole,
  completed: json['completed'] as bool? ?? false,
);

Map<String, dynamic> _$TaskModelToJson(TaskModel instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'description': instance.description,
  'duration': instance.duration,
  'date': instance.date,
  'difficulty': _$TaskDifficultyEnumMap[instance.difficulty]!,
  'type': _$TaskTypeEnumMap[instance.type]!,
  'completed': instance.completed,
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
