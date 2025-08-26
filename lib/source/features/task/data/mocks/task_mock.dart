final class TaskMock {
  const TaskMock._();

  static final response = [
    {
      'id': '001',
      'name': 'Arrumar a cama',
      'description': 'Arrume sua cama logo ao acordar',
      'duration': '5min',
      'date': '2025-08-26',
      'difficulty': 'easy',
      'type': 'recurrent',
      'completed': false,
    },
    {
      'id': '002',
      'name': 'Estudar Flutter',
      'description': 'Dedique 30 minutos para estudar Flutter e praticar widgets.',
      'duration': '30min',
      'date': '2025-08-26',
      'difficulty': 'medium',
      'type': 'sole',
      'completed': false,
    },
    {
      'id': '003',
      'name': 'Exercício físico',
      'description': 'Faça uma caminhada ou corrida leve ao ar livre.',
      'duration': '20min',
      'date': '2025-08-26',
      'difficulty': 'hard',
      'type': 'other',
      'completed': false,
    },
  ];
}