import 'package:flexform/screens/exercises_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserSetupScreen extends StatelessWidget {
  const UserSetupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Vamos começar"),
      ),
      body: const SetupProcess(),
    );
  }
}

class SelectionData {
  int? daysAvailable;
  int? hoursAvailable;
  String? mainGoal;
  int? age;
  String? experienceLevel;
  String? name;

  SelectionData({
    this.daysAvailable,
    this.hoursAvailable,
    this.mainGoal,
    this.age,
    this.experienceLevel,
    this.name,
  });
}

class SuccessScreen extends StatelessWidget {
  final SelectionData data;

  const SuccessScreen({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(""),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Icon(
              Icons.check_circle_outline,
              color: Colors.green,
              size: 120.0,
            ),
            Text(
              "Bem vindo, ${data.name}!",
              style: const TextStyle(fontSize: 22.0),
            ),
            const SizedBox(height: 20),
            const Text(
              "Setup concluído.",
              style: TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (_) => const ExercisesScreen()),
                );
              },
              child: const Text('Começa a puxar ferro'),
            ),
          ],
        ),
      ),
    );
  }
}

class SetupProcess extends StatefulWidget {
  const SetupProcess({Key? key}) : super(key: key);

  @override
  _SetupProcessState createState() => _SetupProcessState();
}

class _SetupProcessState extends State<SetupProcess> {
  int currentStep = 0;
  SelectionData data = SelectionData();
  List<Widget> stepWidgets = [];

  @override
  void initState() {
    super.initState();
    stepWidgets = [
      StepOne(
        onSelection: (value) => setState(() => data.daysAvailable = value),
        initialSelection: data.daysAvailable ?? 0,
      ),
      StepTwo(
        onSelection: (value) => setState(() => data.hoursAvailable = value),
        initialSelection: data.hoursAvailable ?? 0,
      ),
      StepThree(
        onSelection: (part) => setState(() => data.mainGoal = part),
        initialSelection: data.mainGoal ?? "Peito, Tríceps, Ombros",
      ),
      StepAgeSelection(
        onSelection: (value) => setState(() => data.age = value),
      ),
      StepExperienceLevel(
        onSelection: (level) => setState(() => data.experienceLevel = level),
      ),
      StepUserName(
        onNameEntered: (name) => setState(() => data.name = name),
      ),
    ];
  }

  void nextStep() async {
  if (currentStep < stepWidgets.length - 1) {
    setState(() => currentStep++);
  } else {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('daysAvailable', data.daysAvailable ?? 0);
    await prefs.setInt('hoursAvailable', data.hoursAvailable ?? 0);
    await prefs.setString('mainGoal', data.mainGoal ?? '');
    await prefs.setInt('age', data.age ?? 0);
    await prefs.setString('experienceLevel', data.experienceLevel ?? '');
    await prefs.setString('name', data.name ?? '');

    await prefs.setBool('setupCompleted', true);

    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => const ExercisesScreen()),
        );
      }
    }

  bool isSelectionValid(int stepIndex) {
    switch (stepIndex) {
      case 0:
        return data.daysAvailable != null;
      case 1:
        return data.hoursAvailable != null;
      case 2:
        return data.mainGoal != null && data.mainGoal!.isNotEmpty;
      case 3:
        return data.age != null;
      case 4:
        return data.experienceLevel != null && data.experienceLevel!.isNotEmpty;
      case 5:
        return data.name != null && data.name!.isNotEmpty;
      default:
        return false;
    }
  }

  void previousStep() {
    if (currentStep > 0) {
      setState(() => currentStep--);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Processo de Setup - Passo ${currentStep + 1} de ${stepWidgets.length}"),
      ),
      body: SingleChildScrollView(
        child: stepWidgets[currentStep],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          if (currentStep > 0)
            FloatingActionButton(
              onPressed: previousStep,
              child: Icon(Icons.arrow_back),
              backgroundColor: Colors.blue,
            ),
          if (currentStep < stepWidgets.length - 1)
            FloatingActionButton(
              onPressed: nextStep,
              child: Icon(Icons.arrow_forward),
              backgroundColor: isSelectionValid(currentStep) ? Colors.blue : Colors.grey,
            ),
        ],
      ),
    );
  }
}

class StepOne extends StatefulWidget {
  final ValueChanged<int> onSelection;
  final int initialSelection;

  const StepOne({Key? key, required this.onSelection, required this.initialSelection}) : super(key: key);

  @override
  _StepOneState createState() => _StepOneState();
}

class _StepOneState extends State<StepOne> {
  late int _selectedDays;

  @override
  void initState() {
    super.initState();
    _selectedDays = widget.initialSelection;
  }

  @override
  Widget build(BuildContext context) {
    List<int> dayOptions = [1, 2, 3, 4, 5];

    return Column(
      children: [
        ...dayOptions.map(
          (days) => RadioListTile<int>(
            title: Text('$days dias'),
            value: days,
            groupValue: _selectedDays,
            onChanged: (int? value) {
              if (value != null) {
                setState(() {
                  _selectedDays = value;
                  widget.onSelection(value);
                });
              }
            },
          ),
        ),
      ],
    );
  }
}

class StepTwo extends StatefulWidget {
  final ValueChanged<int> onSelection;
  final int initialSelection;

  const StepTwo({Key? key, required this.onSelection, required this.initialSelection})
      : super(key: key);

  @override
  _StepTwoState createState() => _StepTwoState();
}

class _StepTwoState extends State<StepTwo> {
  late int selectedHours;

  @override
  void initState() {
    super.initState();
    selectedHours = widget.initialSelection;
  }

  @override
  Widget build(BuildContext context) {
    List<int> hourOptions = [30, 60, 90, 120];
    return Column(
      children: hourOptions.map((int value) {
        return ListTile(
          title: Text(value == 30 ? '30 min' : '${value ~/ 60}h'),
          leading: Radio<int>(
            value: value,
            groupValue: selectedHours,
            onChanged: (int? newValue) {
              setState(() {
                selectedHours = newValue!;
                widget.onSelection(selectedHours);
              });
            },
          ),
        );
      }).toList(),
    );
  }
}

class StepThree extends StatefulWidget {
  final ValueChanged<String> onSelection;
  final String initialSelection;

  const StepThree({Key? key, required this.onSelection, required this.initialSelection})
      : super(key: key);

  @override
  _StepThreeState createState() => _StepThreeState();
}

class _StepThreeState extends State<StepThree> {
  late String selectedPart;

  @override
  void initState() {
    super.initState();
    selectedPart = widget.initialSelection;
  }

  @override
  Widget build(BuildContext context) {
    List<String> bodyParts = ["Peito, Tríceps, Ombros", "Costas e Bíceps", "Pernas"];

    return StatefulBuilder(
      builder: (BuildContext context, StateSetter setState) {
        return Column(
          children: bodyParts.map((part) {
            return RadioListTile<String>(
              title: Text(part),
              value: part,
              groupValue: selectedPart,
              onChanged: (String? value) {
                if (value != null) {
                  setState(() => selectedPart = value);
                  widget.onSelection(value);
                }
              },
            );
          }).toList(),
        );
      },
    );
  }
}

class StepAgeSelection extends StatefulWidget {
  final ValueChanged<int> onSelection;

  const StepAgeSelection({Key? key, required this.onSelection}) : super(key: key);

  @override
  _StepAgeSelectionState createState() => _StepAgeSelectionState();
}

class _StepAgeSelectionState extends State<StepAgeSelection> {
  int _currentAge = 18;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Text('Seleciona a tua idade: $_currentAge'),
        Slider(
          min: 12,
          max: 100,
          divisions: 88,
          value: _currentAge.toDouble(),
          label: _currentAge.toString(),
          onChanged: (double value) {
            setState(() {
              _currentAge = value.round();
            });
            widget.onSelection(_currentAge);
          },
        ),
        ]
      ),
    );
  }
}

class StepExperienceLevel extends StatefulWidget {
  final ValueChanged<String> onSelection;

  const StepExperienceLevel({Key? key, required this.onSelection}) : super(key: key);

  @override
  _StepExperienceLevelState createState() => _StepExperienceLevelState();
}

class _StepExperienceLevelState extends State<StepExperienceLevel> {
  String? _selectedLevel;

  @override
  Widget build(BuildContext context) {
    List<String> experienceLevels = [
      'Sou completamente novo',
      'Já treinei anteriormente',
    ];

    return StatefulBuilder(
      builder: (BuildContext context, StateSetter setState) {
        return Column(
          children: experienceLevels.map((level) {
            return RadioListTile<String>(
              title: Text(level),
              value: level,
              groupValue: _selectedLevel,
              onChanged: (String? value) {
                if (value != null) {
                  setState(() => _selectedLevel = value);
                  widget.onSelection(value);
                }
              },
            );
          }).toList(),
        );
      },
    );
  }
}

class StepUserName extends StatefulWidget {
  final ValueChanged<String> onNameEntered;

  const StepUserName({Key? key, required this.onNameEntered}) : super(key: key);

  @override
  _StepUserNameState createState() => _StepUserNameState();
}

class _StepUserNameState extends State<StepUserName> {
  final TextEditingController _nameController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: _nameController,
            decoration: const InputDecoration(
              labelText: 'Qual é o teu nome?',
            ),
          ),
          ElevatedButton(
            onPressed: () {
              if (_nameController.text.isNotEmpty) {
                var parentState = context.findAncestorStateOfType<_SetupProcessState>();
                var data = parentState?.data;
                if(data != null) {
                  data.name = _nameController.text;
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (_) => SuccessScreen(data: data)),
                  );
                }
              }
            },
            child: const Text('Confirmar'),
          ),
        ],
      ),
    );
  }
}