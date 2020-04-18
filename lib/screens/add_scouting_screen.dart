import 'package:flutter/material.dart';

class AddScoutingScreen extends StatefulWidget {
  @override
  _AddScoutingScreenState createState() => _AddScoutingScreenState();
}

class _AddScoutingScreenState extends State<AddScoutingScreen> {
  int _currentStep = 0;

  next() {
    _currentStep + 1 != steps.length
        ? goTo(_currentStep + 1)
        : Navigator.of(context).pushNamed("/match");
  }

  goTo(int step) {
    setState(() => _currentStep = step);
  }

  cancel() {
    if (_currentStep > 0) {
      goTo(_currentStep - 1);
    }
  }

  List<Step> steps = [
    Step(
      title: Text("Choose player"),
      isActive: true,
      state: StepState.complete,
      content: TextFormField(
        decoration: InputDecoration(labelText: "player name"),
      ),
    ),
    Step(
      title: Text("Choose position"),
      isActive: false,
      state: StepState.editing,
      content: TextFormField(
        decoration: InputDecoration(labelText: "player position"),
      ),
    ),
    Step(
        title: Text("Choose teams"),
        isActive: false,
        state: StepState.editing,
        content: Column(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(labelText: "Player team"),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: "Opposing team"),
            ),
          ],
        )),
    Step(
      title: Text("Choose date"),
      isActive: false,
      state: StepState.editing,
      content: TextFormField(
        decoration: InputDecoration(labelText: "Choose date"),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Scouting"),
        centerTitle: true,
      ),
      body: Stepper(
        steps: steps,
        currentStep: _currentStep,
        onStepContinue: next,
        onStepTapped: (step) => goTo(step),
        onStepCancel: cancel,
      ),
    );
  }
}
