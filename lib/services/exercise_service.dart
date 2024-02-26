
// services/exercise_service.dart

import '../models/exercise.dart';
import 'package:flexform/models/selection_data.dart';

class ExerciseService {
  static Map<String, String> weeklyPlan = {
    'monday': 'Push',
    'tuesday': 'Pull',
    'wednesday': 'Rest',
    'thursday': 'Push',
    'friday': 'Pull',
    'saturday': 'Legs',
    'sunday': 'Rest',
  };

  static final List<Exercise> _exercises = [
    // ... (Exercises list goes here)
  ];

  static List<Exercise> getExercisesForUser(SelectionData userPreferences) {
    // Implement more complex logic based on userPreferences if necessary
    return _exercises.where((exercise) => userPreferences.mainGoal == exercise.category).toList();
  }

  static List<Exercise> getExercisesForDay(String day) {
    // Match the day with the workout plan, then filter the exercises for that plan.
    String? plan = weeklyPlan[day.toLowerCase()];
    if (plan == null) {
      throw Exception("Day not recognized in the weekly plan.");
    }
    return _exercises.where((exercise) => exercise.days.contains(day)).toList();
  }
}
