// models/exercise.dart

class Exercise {
  final String id;
  final String name;
  final String category; // For example: 'Strength', 'Cardio'
  final List<String> targetedMuscles;
  final String description;
  final List<String> equipmentNeeded;

  Exercise({
    required this.id,
    required this.name,
    required this.category,
    required this.targetedMuscles,
    required this.description,
    required this.equipmentNeeded,
  });
}
