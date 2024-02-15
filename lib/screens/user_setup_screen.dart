import 'package:flutter/material.dart';

class UserSetupScreen extends StatelessWidget {
  const UserSetupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Vamos começar"),
      ),
      body: SetupProcess(),
    );
  }
}

class SelectionData {
  int? daysAvailable;
  int? hoursAvailable;
  int? mainGoal;

  SelectionData({this.daysAvailable, this.hoursAvailable, this.mainGoal});
}

class SetupProcess extends StatefulWidget {
  const SetupProcess({super.key});

  @override
  _SetupProcessState createState() => _SetupProcessState();
}

class _SetupProcessState extends State<SetupProcess> {
  int currentStep = 0;
  SelectionData data = SelectionData();

  void nextStep() {
    setState(() {
      if (currentStep < 2) {
        currentStep++;
      } else {
        
      }
    });
  }

  void previousStep() {
    setState(() {
      if (currentStep > 0) {
        currentStep--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> stepWidgets = [
      StepOne(onSelection: (value) => data.daysAvailable = value),
      StepTwo(onSelection: (value) => data.hoursAvailable = value),
      StepThree(onSelection: (part) => data.mainGoal = part),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Processo de Setup"),
      ),
      body: stepWidgets[currentStep],
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (currentStep > 0)
            FloatingActionButton(
              onPressed: previousStep,
              child: const Icon(Icons.arrow_back),
            ),
          FloatingActionButton(
            onPressed: nextStep,
            child: const Icon(Icons.arrow_forward),
          ),
        ],
      ),
    );
  }
}

class StepOne extends StatefulWidget {
  final ValueChanged<int> onSelection;

  const StepOne({Key? key, required this.onSelection}) : super(key: key);

  @override
  _StepOneState createState() => _StepOneState();
}

class _StepOneState extends State<StepOne> {
  int _selectedDays = 0;

  @override
  Widget build(BuildContext context) {
    List<int> dayOptions = [1, 2, 3, 4, 5, 6, 7];

    return Column(
      children: [
        ...dayOptions.map(
          (days) => ChoiceChip(
            label: Text('$days dias'),
            selected: _selectedDays == days,
            onSelected: (bool selected) {
              setState(() {
                if (selected) {
                  _selectedDays = days;
                  widget.onSelection(days);
                }
              });
            },
          ),
        ),
      ],
    );
  }
}

class StepTwo extends StatefulWidget {
  final ValueChanged<int> onSelection;

  const StepTwo({Key? key, required this.onSelection}) : super(key: key);

  @override
  _StepTwoState createState() => _StepTwoState();
}

class _StepTwoState extends State<StepTwo> {
  int _selectedHours = 0;

  @override
  Widget build(BuildContext context) {
    List<int> hourOptions = [30, 60, 90, 120];

    return Column(
      children: [
        ...hourOptions.map(
          (minutes) => ChoiceChip(
            label: Text(minutes == 30 ? '30 min' : '${minutes ~/ 60}h'),
            selected: _selectedHours == minutes,
            onSelected: (bool selected) {
              setState(() {
                if (selected) {
                  _selectedHours = minutes;
                  widget.onSelection(minutes);
                }
              });
            },
          ),
        ),
      ],
    );
  }
}

class StepThree extends StatefulWidget {
  final ValueChanged<String> onSelection;

  const StepThree({Key? key, required this.onSelection}) : super(key: key);

  @override
  _StepThreeState createState() => _StepThreeState();
}

class _StepThreeState extends State<StepThree> {
  String _selectedBodyPart = '';

  @override
  Widget build(BuildContext context) {
    List<String> bodyPartOptions = [
      "Peito, Tríceps, Ombros",
      "Costas e Bíceps",
      "Pernas"
    ];

    return Column(
      children: bodyPartOptions.map((part) => ChoiceChip(
        label: Text(part),
        selected: _selectedBodyPart == part,
        onSelected: (bool selected) {
          setState(() {
            if (selected) {
              _selectedBodyPart = part;
              widget.onSelection(part);
            }
          });
        },
      )).toList(),
    );
  }
}