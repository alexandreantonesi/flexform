
import '../models/exercise.dart';

class ExerciseService {
  static final Map<String, List<Exercise>> _weeklyPlan = {
    'Monday': [
        Exercise(
            id: 'supino_com_halteres',
            name: 'Supino com Halteres',
            category: 'Category to be updated',  // Placeholder for category
            targetedMuscles: ['Muscle groups to be updated'],  // Placeholder for muscle groups
            description: 'Descrição para Supino com Halteres',  // Placeholder for description
            equipmentNeeded: ['Equipamento necessário para Supino com Halteres'],  // Placeholder for equipment
            days: ['Sunday'],  // Placeholder for days
        ),
        
        Exercise(
            id: 'elevações_frontais_com_cabo',
            name: 'Elevações Frontais com Cabo',
            category: 'Category to be updated',  // Placeholder for category
            targetedMuscles: ['Muscle groups to be updated'],  // Placeholder for muscle groups
            description: 'Descrição para Elevações Frontais com Cabo',  // Placeholder for description
            equipmentNeeded: ['Equipamento necessário para Elevações Frontais com Cabo'],  // Placeholder for equipment
            days: ['Sunday'],  // Placeholder for days
        ),
        
        Exercise(
            id: 'elevações_laterais_com_halteres',
            name: 'Elevações Laterais com Halteres',
            category: 'Category to be updated',  // Placeholder for category
            targetedMuscles: ['Muscle groups to be updated'],  // Placeholder for muscle groups
            description: 'Descrição para Elevações Laterais com Halteres',  // Placeholder for description
            equipmentNeeded: ['Equipamento necessário para Elevações Laterais com Halteres'],  // Placeholder for equipment
            days: ['Sunday'],  // Placeholder for days
        ),
        
        Exercise(
            id: 'pressão_de_peito_com_cabo',
            name: 'Pressão de Peito com Cabo',
            category: 'Category to be updated',  // Placeholder for category
            targetedMuscles: ['Muscle groups to be updated'],  // Placeholder for muscle groups
            description: 'Descrição para Pressão de Peito com Cabo',  // Placeholder for description
            equipmentNeeded: ['Equipamento necessário para Pressão de Peito com Cabo'],  // Placeholder for equipment
            days: ['Sunday'],  // Placeholder for days
        ),
        
      Exercise(
        id: 'incline_dumbbell_bench_press',
        name: 'Incline Supino com Halteres',
        category: 'Clavicular head of the pectoralis major',
        targetedMuscles: ['Clavicular head of the pectoralis major', 'Triceps', 'Anterior deltoids'],
        description: 'Description for Incline Supino com Halteres',
        equipmentNeeded: ['Equipment needed for Incline Supino com Halteres'],
        days: ['Sunday'],
      ),

      Exercise(
        id: 'cable_front_raises',
        name: 'Elevações Frontais com Cabo',
        category: 'Clavicular head of the pectoralis major',
        targetedMuscles: ['Clavicular head of the pectoralis major', 'Anterior deltoids'],
        description: 'Description for Elevações Frontais com Cabo',
        equipmentNeeded: ['Equipment needed for Elevações Frontais com Cabo'],
        days: ['Sunday'],
      ),

      Exercise(
        id: 'peck_deck_flies',
        name: 'Peck Deck',
        category: 'Sternocostal head of the pectoralis major',
        targetedMuscles: ['Sternocostal head of the pectoralis major', 'Triceps', 'Anterior deltoids'],
        description: 'Description for Peck Deck',
        equipmentNeeded: ['Equipment needed for Peck Deck'],
        days: ['Sunday'],
      ),

      Exercise(
        id: 'dumbbell_bench_press',
        name: 'Supino com Halteres',
        category: 'Sternocostal head of the pectoralis major',
        targetedMuscles: ['Sternocostal head of the pectoralis major', 'Triceps', 'Anterior deltoids'],
        description: 'Description for Supino com Halteres',
        equipmentNeeded: ['Equipment needed for Supino com Halteres'],
        days: ['Sunday'],
      ),
Exercise(
                id: 'incline_dumbbell_bench_press',
                name: 'Incline Supino com Halteres',
                category: 'Monday exercise',
                targetedMuscles: ['Clavicular head of the pectoralis major', 'Triceps', 'Anterior deltoids'],
                description: 'Description for Incline Supino com Halteres',
                equipmentNeeded: ['Equipment needed for Incline Supino com Halteres'],
                days: ['Monday'],
            ),
    Exercise(
                id: 'cable_front_raises',
                name: 'Elevações Frontais com Cabo',
                category: 'Monday exercise',
                targetedMuscles: ['Clavicular head of the pectoralis major', 'Anterior deltoids'],
                description: 'Description for Elevações Frontais com Cabo',
                equipmentNeeded: ['Equipment needed for Elevações Frontais com Cabo'],
                days: ['Monday'],
            ),
    Exercise(
                id: 'peck_deck_flies',
                name: 'Peck Deck',
                category: 'Monday exercise',
                targetedMuscles: ['Sternocostal head of the pectoralis major', 'Triceps', 'Anterior deltoids'],
                description: 'Description for Peck Deck',
                equipmentNeeded: ['Equipment needed for Peck Deck'],
                days: ['Monday'],
            ),
    Exercise(
                id: 'dumbbell_bench_press',
                name: 'Supino com Halteres',
                category: 'Monday exercise',
                targetedMuscles: ['Sternocostal head of the pectoralis major', 'Triceps', 'Anterior deltoids'],
                description: 'Description for Supino com Halteres',
                equipmentNeeded: ['Equipment needed for Supino com Halteres'],
                days: ['Monday'],
            ),
    
      Exercise(
        id: '1',
        name: 'Bench Press',
        category: 'Push',
        targetedMuscles: ['Pectorals', 'Triceps'],
        description: 'A basic upper body push exercise.',
        equipmentNeeded: ['Barbell'],
        days: ['Sunday'],
      ),
    ],
    'Tuesday': [
        Exercise(
            id: 'pulldown',
            name: 'Pulldown',
            category: 'Category to be updated',  // Placeholder for category
            targetedMuscles: ['Muscle groups to be updated'],  // Placeholder for muscle groups
            description: 'Descrição para Pulldown',  // Placeholder for description
            equipmentNeeded: ['Equipamento necessário para Pulldown'],  // Placeholder for equipment
            days: ['Sunday'],  // Placeholder for days
        ),
        
        Exercise(
            id: 'remada_sentado',
            name: 'Remada Sentado',
            category: 'Category to be updated',  // Placeholder for category
            targetedMuscles: ['Muscle groups to be updated'],  // Placeholder for muscle groups
            description: 'Descrição para Remada Sentado',  // Placeholder for description
            equipmentNeeded: ['Equipamento necessário para Remada Sentado'],  // Placeholder for equipment
            days: ['Sunday'],  // Placeholder for days
        ),
        
        Exercise(
            id: 'curl_com_halteres',
            name: 'Curl com Halteres',
            category: 'Category to be updated',  // Placeholder for category
            targetedMuscles: ['Muscle groups to be updated'],  // Placeholder for muscle groups
            description: 'Descrição para Curl com Halteres',  // Placeholder for description
            equipmentNeeded: ['Equipamento necessário para Curl com Halteres'],  // Placeholder for equipment
            days: ['Sunday'],  // Placeholder for days
        ),
        
        Exercise(
            id: 'conversar_com_uma_mulher',
            name: 'Conversar com uma Mulher',
            category: 'Category to be updated',  // Placeholder for category
            targetedMuscles: ['Muscle groups to be updated'],  // Placeholder for muscle groups
            description: 'Descrição para Conversar com uma Mulher',  // Placeholder for description
            equipmentNeeded: ['Equipamento necessário para Conversar com uma Mulher'],  // Placeholder for equipment
            days: ['Sunday'],  // Placeholder for days
        ),
        Exercise(
                id: 'peck_deck_rear_delt_flies',
                name: 'Peck Deck Rear Delt Flies',
                category: 'Tuesday exercise',
                targetedMuscles: ['Posterior deltoids', 'Rhomboids', 'Trapezius'],
                description: 'Description for Peck Deck Rear Delt Flies',
                equipmentNeeded: ['Equipment needed for Peck Deck Rear Delt Flies'],
                days: ['Tuesday'],
            ),
    Exercise(
                id: 'seated_rows',
                name: 'Seated Rows',
                category: 'Tuesday exercise',
                targetedMuscles: ['Trapezius', 'Rhomboids', 'Latissimus dorsi'],
                description: 'Description for Seated Rows',
                equipmentNeeded: ['Equipment needed for Seated Rows'],
                days: ['Tuesday'],
            ),
    Exercise(
                id: 'lat_pulldown',
                name: 'Lat Pulldown',
                category: 'Tuesday exercise',
                targetedMuscles: ['Latissimus dorsi', 'Biceps brachii', 'Brachialis', 'Brachioradialis'],
                description: 'Description for Lat Pulldown',
                equipmentNeeded: ['Equipment needed for Lat Pulldown'],
                days: ['Tuesday'],
            ),
    Exercise(
                id: 't_bar_rows',
                name: 'T-bar Rows',
                category: 'Tuesday exercise',
                targetedMuscles: ['Latissimus dorsi', 'Rhomboids', 'Middle trapezius'],
                description: 'Description for T-bar Rows',
                equipmentNeeded: ['Equipment needed for T-bar Rows'],
                days: ['Tuesday'],
            ),
    Exercise(
                id: 'inclined_bicep_curls',
                name: 'Inclined Curl de Bíceps',
                category: 'Tuesday exercise',
                targetedMuscles: ['Long head of the biceps', 'Brachialis'],
                description: 'Description for Inclined Curl de Bíceps',
                equipmentNeeded: ['Equipment needed for Inclined Curl de Bíceps'],
                days: ['Tuesday'],
            ),
    Exercise(
                id: 'preacher_bicep_curls',
                name: 'Preacher Curl de Bíceps',
                category: 'Tuesday exercise',
                targetedMuscles: ['Short head of the biceps', 'Brachialis'],
                description: 'Description for Preacher Curl de Bíceps',
                equipmentNeeded: ['Equipment needed for Preacher Curl de Bíceps'],
                days: ['Tuesday'],
            ),
    Exercise(
                id: 'bicep_curls',
                name: 'Curl de Bíceps',
                category: 'Tuesday exercise',
                targetedMuscles: ['Biceps', 'Brachialis'],
                description: 'Description for Curl de Bíceps',
                equipmentNeeded: ['Equipment needed for Curl de Bíceps'],
                days: ['Tuesday'],
            ),
    Exercise(
                id: 'cable_bicep_curls',
                name: 'Curl de Bíceps com Cabo',
                category: 'Tuesday exercise',
                targetedMuscles: ['Biceps', 'Brachialis'],
                description: 'Description for Curl de Bíceps com Cabo',
                equipmentNeeded: ['Equipment needed for Curl de Bíceps com Cabo'],
                days: ['Tuesday'],
            ),
    
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
    'Wednesday': [Exercise(
                id: 'unilateral_cable_lateral_raises',
                name: 'Unilateral Cable Lateral Raises',
                category: 'Wednesday exercise',
                targetedMuscles: ['Medial deltoids'],
                description: 'Description for Unilateral Cable Lateral Raises',
                equipmentNeeded: ['Equipment needed for Unilateral Cable Lateral Raises'],
                days: ['Wednesday'],
            ),
    Exercise(
                id: 'dumbbell_lateral_raises',
                name: 'Dumbbell Lateral Raises',
                category: 'Wednesday exercise',
                targetedMuscles: ['Medial deltoids'],
                description: 'Description for Dumbbell Lateral Raises',
                equipmentNeeded: ['Equipment needed for Dumbbell Lateral Raises'],
                days: ['Wednesday'],
            ),
    Exercise(
                id: 'unilateral_cable_tricep_overhead_extensions',
                name: 'Extensões de Tríceps Sobre a Cabeça com Cabo Unilateral',
                category: 'Wednesday exercise',
                targetedMuscles: ['Triceps brachii (long head)'],
                description: 'Description for Extensões de Tríceps Sobre a Cabeça com Cabo Unilateral',
                equipmentNeeded: ['Equipment needed for Extensões de Tríceps Sobre a Cabeça com Cabo Unilateral'],
                days: ['Wednesday'],
            ),
    Exercise(
                id: 'unilateral_cable_tricep_extensions',
                name: 'Extensões de Tríceps com Cabo Unilateral',
                category: 'Wednesday exercise',
                targetedMuscles: ['Triceps brachii'],
                description: 'Description for Extensões de Tríceps com Cabo Unilateral',
                equipmentNeeded: ['Equipment needed for Extensões de Tríceps com Cabo Unilateral'],
                days: ['Wednesday'],
            ),
    ],
    'Thursday': [
        Exercise(
            id: 'supino_inclinado_com_halteres',
            name: 'Supino Inclinado com Halteres',
            category: 'Category to be updated',  // Placeholder for category
            targetedMuscles: ['Muscle groups to be updated'],  // Placeholder for muscle groups
            description: 'Descrição para Supino Inclinado com Halteres',  // Placeholder for description
            equipmentNeeded: ['Equipamento necessário para Supino Inclinado com Halteres'],  // Placeholder for equipment
            days: ['Sunday'],  // Placeholder for days
        ),
        
        Exercise(
            id: 'pressão_de_ombro',
            name: 'Pressão de Ombro',
            category: 'Category to be updated',  // Placeholder for category
            targetedMuscles: ['Muscle groups to be updated'],  // Placeholder for muscle groups
            description: 'Descrição para Pressão de Ombro',  // Placeholder for description
            equipmentNeeded: ['Equipamento necessário para Pressão de Ombro'],  // Placeholder for equipment
            days: ['Sunday'],  // Placeholder for days
        ),
        
        Exercise(
            id: 'peck_deck',
            name: 'Peck Deck',
            category: 'Category to be updated',  // Placeholder for category
            targetedMuscles: ['Muscle groups to be updated'],  // Placeholder for muscle groups
            description: 'Descrição para Peck Deck',  // Placeholder for description
            equipmentNeeded: ['Equipamento necessário para Peck Deck'],  // Placeholder for equipment
            days: ['Sunday'],  // Placeholder for days
        ),
        
        Exercise(
            id: 'mergulho',
            name: 'Mergulho',
            category: 'Category to be updated',  // Placeholder for category
            targetedMuscles: ['Muscle groups to be updated'],  // Placeholder for muscle groups
            description: 'Descrição para Mergulho',  // Placeholder for description
            equipmentNeeded: ['Equipamento necessário para Mergulho'],  // Placeholder for equipment
            days: ['Sunday'],  // Placeholder for days
        ),
        Exercise(
                id: 'leg_curls',
                name: 'Leg Curls',
                category: 'Thursday exercise',
                targetedMuscles: ['Hamstrings'],
                description: 'Description for Leg Curls',
                equipmentNeeded: ['Equipment needed for Leg Curls'],
                days: ['Thursday'],
            ),
    Exercise(
                id: 'leg_extensions',
                name: 'Leg Extensions',
                category: 'Thursday exercise',
                targetedMuscles: ['Quadriceps'],
                description: 'Description for Leg Extensions',
                equipmentNeeded: ['Equipment needed for Leg Extensions'],
                days: ['Thursday'],
            ),
    Exercise(
                id: 'leg_press',
                name: 'Leg Press',
                category: 'Thursday exercise',
                targetedMuscles: ['Quadriceps', 'Hamstrings', 'Gluteal muscles'],
                description: 'Description for Leg Press',
                equipmentNeeded: ['Equipment needed for Leg Press'],
                days: ['Thursday'],
            ),
    Exercise(
                id: 'squats',
                name: 'Squats',
                category: 'Thursday exercise',
                targetedMuscles: ['Quadriceps', 'Hamstrings', 'Gluteus maximus', 'Adductors', 'Lower back'],
                description: 'Description for Squats',
                equipmentNeeded: ['Equipment needed for Squats'],
                days: ['Thursday'],
            ),
    
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
        Exercise(
            id: 'remada_com_t-bar_apoiada',
            name: 'Remada com T-bar Apoiada',
            category: 'Category to be updated',  // Placeholder for category
            targetedMuscles: ['Muscle groups to be updated'],  // Placeholder for muscle groups
            description: 'Descrição para Remada com T-bar Apoiada',  // Placeholder for description
            equipmentNeeded: ['Equipamento necessário para Remada com T-bar Apoiada'],  // Placeholder for equipment
            days: ['Sunday'],  // Placeholder for days
        ),
        
        Exercise(
            id: 'pulldown_unilateral',
            name: 'Pulldown Unilateral',
            category: 'Category to be updated',  // Placeholder for category
            targetedMuscles: ['Muscle groups to be updated'],  // Placeholder for muscle groups
            description: 'Descrição para Pulldown Unilateral',  // Placeholder for description
            equipmentNeeded: ['Equipamento necessário para Pulldown Unilateral'],  // Placeholder for equipment
            days: ['Sunday'],  // Placeholder for days
        ),
        
        Exercise(
            id: 'voo_do_deltóide_posterior',
            name: 'Voo do Deltóide Posterior',
            category: 'Category to be updated',  // Placeholder for category
            targetedMuscles: ['Muscle groups to be updated'],  // Placeholder for muscle groups
            description: 'Descrição para Voo do Deltóide Posterior',  // Placeholder for description
            equipmentNeeded: ['Equipamento necessário para Voo do Deltóide Posterior'],  // Placeholder for equipment
            days: ['Sunday'],  // Placeholder for days
        ),
        
        Exercise(
            id: 'curl_de_bíceps_com_barra',
            name: 'Curl de Bíceps com Barra',
            category: 'Category to be updated',  // Placeholder for category
            targetedMuscles: ['Muscle groups to be updated'],  // Placeholder for muscle groups
            description: 'Descrição para Curl de Bíceps com Barra',  // Placeholder for description
            equipmentNeeded: ['Equipamento necessário para Curl de Bíceps com Barra'],  // Placeholder for equipment
            days: ['Sunday'],  // Placeholder for days
        ),
        
    ],
    'Saturday': [
    ],
    'Sunday': [
      Exercise(
        id: '4',
        name: 'Corrida Leve',
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