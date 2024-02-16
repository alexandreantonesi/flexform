import 'package:flutter/material.dart';

class ExercisesScreen extends StatelessWidget {
  const ExercisesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercícios de hoje'),
      ),
      body: ListView(
        children: [
          ExerciseTile(
            exerciseName: 'Exercise 1',
            bodyPart: 'Chest',
            iconData: Icons.fitness_center,
          ),
          ExerciseTile(
            exerciseName: 'Exercise 2',
            bodyPart: 'Triceps',
            iconData: Icons.fitness_center,
          ),
        ],
      ),
    );
  }
}

class ExerciseTile extends StatelessWidget {
  final String exerciseName;
  final String bodyPart;
  final IconData iconData;

  const ExerciseTile({
    Key? key,
    required this.exerciseName,
    required this.bodyPart,
    required this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(iconData),
        title: Text(exerciseName),
        subtitle: Text(bodyPart),
        trailing: const Icon(Icons.chevron_right),
        onTap: () {
          
        },
      ),
    );
  }
}