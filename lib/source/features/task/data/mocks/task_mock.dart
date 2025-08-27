final class TaskMock {
  const TaskMock._();

  static final response = [
    {
      'id': '001',
      'title': 'Arrumar a cama',
      'description': 'Arrume sua cama logo ao acordar',
      'date': '2025-08-26',
      'timer': '5 min',
      'duration': 'daily',
      'difficulty': 'easy',
      'type': 'recurrent',
      'completed': false,
    },
    {
      'id': '002',
      'title': 'Estudar Flutter',
      'description': 'Dedique 30 minutos para estudar Flutter e praticar widgets.',
      'date': '2025-08-26',
      'timer': '',
      'duration': 'monthly',
      'difficulty': 'medium',
      'type': 'sole',
      'completed': false,
    },
    {
      'id': '003',
      'title': 'Exercício físico',
      'description': 'Faça uma caminhada ou corrida leve ao ar livre.',
      'date': '2025-08-26',
      'timer': '8 horas',
      'duration': 'annual',
      'difficulty': 'hard',
      'type': 'other',
      'completed': false,
    },
  ];
}