
import 'package:flutter/material.dart';
import 'package:flexform/models/exercise.dart';

class ExerciseTile extends StatelessWidget {
  final Exercise exercise;
  final VoidCallback onTap;

  const ExerciseTile({
    Key? key,
    required this.exercise,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(exercise.name),
        leading: Icon(Icons.fitness_center), // Placeholder for exercise icon
        subtitle: Text('Muscle Group: ${exercise.targetedMuscles.join(', ')}'), // Placeholder for muscle group
        trailing: IconButton(
          icon: Icon(Icons.chevron_right),
          onPressed: onTap,
        ),
        onTap: onTap,
      ),
    );
  }
}