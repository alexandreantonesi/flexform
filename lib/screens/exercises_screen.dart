import 'package:flutter/material.dart';

class ExercisesScreen extends StatelessWidget {
  // Assuming that userPreferences should be of type Map, add the type here.
  // If the type is different, replace 'Map' with the correct type.
  final Map userPreferences;

  // If the ExercisesScreen constructor is not supposed to be const, remove the const keyword.
  ExercisesScreen({required this.userPreferences});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weekly Exercise Plan'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(title: const Text('Monday: Push exercises')),
          ListTile(title: const Text('Tuesday: Pull exercises')),
          ListTile(title: const Text('Wednesday: Rest day')),
          ListTile(title: const Text('Thursday: Push exercises')),
          ListTile(title: const Text('Friday: Pull exercises')),
          ListTile(title: const Text('Saturday: Legs exercises')),
          ListTile(title: const Text('Sunday: Rest day')),
        ],
      ),
    );
  }
}