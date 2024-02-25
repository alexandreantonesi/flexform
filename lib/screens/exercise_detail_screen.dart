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



    void startExercise() {
        // Start the exercise and listen for data from Arduino for movement detection
        // TODO: Implement the integration with TensorFlow Lite and Arduino
    }

    Widget anatomySection() {
        // Display information about the muscles involved in the exercise
        // TODO: Retrieve and display muscle information from a suitable model or service
        return Container(
            // Placeholder for anatomy section layout
        );
    }
    