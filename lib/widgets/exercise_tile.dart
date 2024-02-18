import 'package:flutter/material.dart';

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
          // TODO: Implement navigation or action when tapping on the exercise
        },
      ),
    );
  }
}