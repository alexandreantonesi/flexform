import 'package:flutter/material.dart';
import 'package:flexform/models/exercise.dart';
import 'package:flexform/widgets/exercise_tile.dart';
import 'package:flexform/screens/user_setup_screen.dart';
import 'package:flexform/services/exercise_service.dart';
import 'package:flexform/models/exercise.dart';


class ExercisesScreen extends StatelessWidget {
  final SelectionData userPreferences;

  const ExercisesScreen({Key? key, required this.userPreferences}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Exercise> exercises = ExerciseService.getExercisesForUser(userPreferences);
    print('User Preferences: $userPreferences');

    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercícios de hoje'),
      ),
      body: ListView.builder(
        itemCount: exercises.length,
        itemBuilder: (context, index) {
          return ExerciseTile(
            exerciseName: exercises[index].name,
            bodyPart: exercises[index].targetedMuscles.join(', '),
            iconData: Icons.fitness_center,
          );
        },
      ),
    );
  }
}