import 'package:flutter/material.dart';
import 'package:flexform/screens/exercises_screen.dart';
import 'package:flexform/screens/user_setup_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Required for async main function
  final prefs = await SharedPreferences.getInstance();
  final setupCompleted = prefs.getBool('setupCompleted') ?? false;

  runApp(MyApp(setupCompleted: setupCompleted));
}

class MyApp extends StatelessWidget {
  final bool setupCompleted;

  const MyApp({super.key, required this.setupCompleted});

  @override
  Widget build(BuildContext context) {
    Widget homeScreen = setupCompleted 
        ? const ExercisesScreen()
        : const UserSetupScreen();

    return MaterialApp(
      title: 'FlexForm',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: homeScreen,
    );
  }
}