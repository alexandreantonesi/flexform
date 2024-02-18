import 'package:flutter/material.dart';
import 'package:flexform/screens/exercises_screen.dart';
import 'package:flexform/screens/user_setup_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final setupCompleted = prefs.getBool('setupCompleted') ?? false;

  // Initialize `userPreferences` with default values or from stored data
  final userPreferences = SelectionData(
    // Assign default values or retrieve each field from `prefs`
    daysAvailable: prefs.getInt('daysAvailable'),
    hoursAvailable: prefs.getInt('hoursAvailable'),
    mainGoal: prefs.getString('mainGoal'),
    age: prefs.getInt('age'),
    experienceLevel: prefs.getString('experienceLevel'),
    name: prefs.getString('name'),
  );

  runApp(MyApp(setupCompleted: setupCompleted, userPreferences: userPreferences));
}

class MyApp extends StatelessWidget {
  final bool setupCompleted;
  final SelectionData userPreferences;

  const MyApp({super.key, required this.setupCompleted, required this.userPreferences});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlexForm',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: setupCompleted ? ExercisesScreen(userPreferences: userPreferences) : const UserSetupScreen(),
    );
  }
}