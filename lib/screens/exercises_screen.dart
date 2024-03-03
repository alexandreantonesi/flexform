
import 'package:flutter/material.dart';
import '../models/selection_data.dart';
import '../services/exercise_service.dart';
import '../widgets/exercise_tile.dart';
import 'exercise_detail_screen.dart';

class ExercisesScreen extends StatelessWidget {
  final SelectionData userPreferences;

  ExercisesScreen({required this.userPreferences});

  @override
  Widget build(BuildContext context) {
    final String dayKey = 'Sunday';
    final exercises = ExerciseService.getExercisesForDay(dayKey);

    print('Today is overridden to: $dayKey');
    print('Found ${exercises.length} exercises for Sunday');

    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercícios para Hoje'),
      ),
      body: exercises.isEmpty
          ? Center(child: Text('Hoje é dia de descanso, não te esqueças de comer propriamente.'))
          : ListView.builder(
              itemCount: exercises.length,
              itemBuilder: (context, index) {
                final exercise = exercises[index];
                print('Exercise for Sunday ${index + 1}: ${exercise.name}');
                return ExerciseTile(
                  exercise: exercise,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ExerciseDetailScreen(exercise: exercise),
                      ),
                    );
                  },
                );
              },
            ),
    );
  }
}