import 'package:flutter/material.dart';

class UserSetupScreen extends StatefulWidget {
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
      StepOne(onSelection: (value) => data.daysAvailable = value),
      StepTwo(onSelection: (value) => data.hoursAvailable = value),
      StepTwo(onSelection: (value) => data.mainGoal = value),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Processo de Setup"),
      ),
      body: stepWidgets[currentStep],
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if(currentStep > 0)
            FloatingActionButton(
              onPressed: previousStep,
              child: Icon(Icons.arrow_back)
            ),
          FloatingActionButton(
            onPressed: nextStep,
            child: Icon(Icons.arrow_forward),
          ),
        ],
      ),
    );
  }
}

//passo 1
class StepOne extends StatefulWidget {
  final ValueChanged<int> onSelection;

  StepOne({Key? key, required this.onSelection});

  @override
  Widget build(BuildContext context) {
    return Container()
  }
}

class StepTwo extends StatelessWidget {
  final Function(int) onSelection;

  StepTwo({required this.onSelection});
}

class StepThree extends StatelessWidget {
  final Function(int) onSelection;

  StepThree({required this.onSelection});
}
