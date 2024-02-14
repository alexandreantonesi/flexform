import 'package:flutter/material.dart';

class UserSetupScreen extends StatefulWidget {
  const UserSetupScreen({super.key});

  @override
  _UserSetupScreen createState() => _UserSetupScreen();
}

class _UserSetupScreen extends State<UserSetupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Vamos começar"),
      ),
      body: const Center(
        child: Text("Teste"),
      ),
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
    //definição do próximo passo
    if(currentStep < 2) {
      setState(() {
        currentStep++;
      });
    //finalizar o setup
    } else {
      
    }
  }

  void previousStep() {
    if(currentStep > 0) {
      setState(() {
        currentStep--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> stepWidgets = [
      StepOne(onSelection: (value) => data.daysAvailable = value),/* 
      StepTwo(onSelection: (value) => data.hoursAvailable = value),
      StepTwo(onSelection: (value) => data.mainGoal = value), */
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Processo de Setup"),
      ),
      body: stepWidgets[currentStep],
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if(currentStep > 0)
            FloatingActionButton(
              onPressed: previousStep,
              child: const Icon(Icons.arrow_back)
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

//passo 1
class StepOne extends StatefulWidget {
  final ValueChanged<int> onSelection;

  const StepOne({Key? key, required this.onSelection}) : super(key: key);

  @override
  _StepOneState createState() => _StepOneState();
}

class _StepOneState extends State<StepOne> {
  int _selectedDays = 0; // default or previously selected value

  @override
  Widget build(BuildContext context) {
    List<int> dayOptions = [1, 2, 3, 4, 5, 6, 7]; // for example

    return Column(
      children: [
        ...dayOptions.map((days) => ChoiceChip(
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
            )),
      ],
    );
  }
}