
import '../models/exercise.dart';

class ExerciseService {
  static final Map<String, List<Exercise>> _weeklyPlan = {
    'Monday': [
      Exercise(
        id: '1',
        name: 'Bench Press',
        category: 'Push',
        targetedMuscles: ['Pectorals', 'Triceps'],
        description: 'A basic upper body push exercise.',
        equipmentNeeded: ['Barbell'],
        days: ['Monday', 'Friday'],
      ),
    ],
    'Tuesday': [
      Exercise(
        id: '2',
        name: 'Pull Ups',
        category: 'Pull',
        targetedMuscles: ['Back', 'Biceps'],
        description: 'A fundamental upper body pull exercise.',
        equipmentNeeded: ['Pull-up Bar'],
        days: ['Tuesday', 'Saturday'],
      ),
    ],
    'Wednesday': [],
    'Thursday': [
      Exercise(
        id: '3',
        name: 'Squats',
        category: 'Legs',
        targetedMuscles: ['Quadriceps', 'Glutes'],
        description: 'A key compound exercise for leg day.',
        equipmentNeeded: ['Barbell'],
        days: ['Thursday'],
      ),
    ],
    'Friday': [
    ],
    'Saturday': [
    ],
    'Sunday': [
      Exercise(
        id: '4',
        name: 'Light Jogging',
        category: 'Cardio',
        targetedMuscles: ['Legs'],
        description: 'A light cardio exercise to end the week.',
        equipmentNeeded: ['None'],
        days: ['Sunday'],
      ),
    ],
  };

  static List<Exercise> getExercisesForDay(String day) {
    return _weeklyPlan[day] ?? [];
  }
}