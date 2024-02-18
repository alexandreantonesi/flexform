// widgets/exercise_tile.dart
import 'package:flutter/material.dart';
import '../models/exercise.dart';

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
    return ListTile(
      title: Text(exercise.name),
      subtitle: Text('Músculos alvo: ${exercise.targetedMuscles.join(', ')}'),
      trailing: Icon(Icons.chevron_right),
      onTap: onTap,
    );
  }
}