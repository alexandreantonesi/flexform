// exercises_screen.dart
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flexform/models/exercise.dart';
import 'package:flexform/services/exercise_service.dart';
import 'package:flexform/widgets/exercise_tile.dart';
import 'package:flexform/models/selection_data.dart';
import 'exercise_detail_screen.dart';

class ExercisesScreen extends StatelessWidget {
  final SelectionData userPreferences;

  const ExercisesScreen({Key? key, required this.userPreferences}) : super(key: key);

  String getCurrentDay() {
    DateTime now = DateTime.now();
    return DateFormat('EEEE', 'pt_PT').format(now).toLowerCase();
  }

  List<Exercise> getTodayExercises(List<Exercise> exercises) {
    String today = getCurrentDay();
    return exercises.where((exercise) => exercise.days.contains(today)).toList();
  }

  @override
  Widget build(BuildContext context) {
    List<Exercise> allExercises = ExerciseService.getExercisesForUser(userPreferences);
    List<Exercise> todayExercises = getTodayExercises(allExercises);

    return Scaffold(
      appBar: AppBar(
        title: Text('Exercícios de Hoje'),
      ),
      body: ListView.builder(
        itemCount: todayExercises.length,
        itemBuilder: (context, index) {
          final exercise = todayExercises[index];
          return ExerciseTile(
            exercise: exercise,
            onTap: () {
              Navigator.of(context).push(
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
