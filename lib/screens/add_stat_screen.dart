import 'package:flutter/material.dart';

class AddStatScreen extends StatefulWidget {
  @override
  _AddStatScreenState createState() => _AddStatScreenState();
}

class _AddStatScreenState extends State<AddStatScreen> {
  int _currentStep = 0;

  next() {
    _currentStep + 1 != steps.length ? goTo(_currentStep + 1) : Navigator.of(context).pop();
  }

  goTo(int step) {
    setState(() => _currentStep = step);
  }

  cancel() {
    if(_currentStep > 0)
      goTo(_currentStep - 1);
  }

  List<Step> steps = [
    Step(
      title: Text("Choose title"),
      isActive: true,
      state: StepState.complete,
      content: TextFormField(
        decoration: InputDecoration(labelText: "stat title"),
      )
    ),
    Step(
      title: Text("Choose matchmode"),
      isActive: true,
      state: StepState.complete,
      content: TextFormField(
        decoration: InputDecoration(labelText: "stat matchmode"),
      )
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add Stat",
        ),
        centerTitle: true,
      ),
      body: Stepper(
        steps: steps,
        currentStep: _currentStep,
        onStepCancel: cancel,
        onStepContinue: next,
        onStepTapped: (step) => goTo(step),
      ),
    );
  }
}