// screens/exercise_detail_screen.dart
import 'package:flutter/material.dart';
import 'package:flexform/models/exercise.dart';

class ExerciseDetailScreen extends StatelessWidget {
  final Exercise exercise;

  const ExerciseDetailScreen({Key? key, required this.exercise}) : super(key: key);

  void startExercise() {
    print('exercicio iniciado');
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
            ElevatedButton(
              onPressed: startExercise,
              child: Text('Iniciar Exercício'),
            ),
          ],
        ),
      ),
    );
  }
}
