
// screens/exercise_detail_screen.dart
import 'package:flutter/material.dart';
import 'package:flexform/models/exercise.dart';

class ExerciseDetailScreen extends StatelessWidget {
  final Exercise exercise;

  const ExerciseDetailScreen({Key? key, required this.exercise}) : super(key: key);

  void startExercise() {
    print('Exercise started');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(exercise.name),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(exercise.description),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: startExercise,
              child: Text('Iniciar Exercício'),
            ),
            SizedBox(height: 20),
            Text('Músculos alvo: ${exercise.targetedMuscles.join(', ')}'),
          ],
        ),
      ),
    );
  }
}