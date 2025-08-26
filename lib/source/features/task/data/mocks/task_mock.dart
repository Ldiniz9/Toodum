import 'package:toodum/source/features/task/data/models/task_model.dart';

final taskMock = TaskModel(
  id: '001',
  name: 'Arrumar a cama',
  description: 'Arrume sua cama logo ao acordar',
  duration: '5min',
  date: '2025-08-26',
  difficulty: TaskDifficulty.easy,
  type: TaskType.recurrent,
  completed: false,
);

final taskMock2 = TaskModel(
  id: '002',
  name: 'Estudar Flutter',
  description: 'Dedique 30 minutos para estudar Flutter e praticar widgets.',
  duration: '30min',
  date: '2025-08-26',
  difficulty: TaskDifficulty.medium,
  type: TaskType.sole,
  completed: false,
);

final taskMock3 = TaskModel(
  id: '003',
  name: 'Exercício físico',
  description: 'Faça uma caminhada ou corrida leve ao ar livre.',
  duration: '20min',
  date: '2025-08-26',
  difficulty: TaskDifficulty.hard,
  type: TaskType.other,
  completed: false,
);