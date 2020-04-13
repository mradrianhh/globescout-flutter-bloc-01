import 'package:flutter/material.dart';

class AddPlayerScreen extends StatefulWidget {
  @override
  _AddPlayerScreenState createState() => _AddPlayerScreenState();
}

class _AddPlayerScreenState extends State<AddPlayerScreen> {
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
      title: Text("Name"),
      isActive: true,
      state: StepState.complete,
      content: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(labelText: "First Name"),
          ),
          TextFormField(
            decoration: InputDecoration(labelText: "Last Name"),
          ),
        ],
      )
    ),

    Step(
      title: Text("Details"),
      isActive: false,
      state: StepState.editing,
      content: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(labelText: "Position"),
          ),
          TextFormField(
            decoration: InputDecoration(labelText: "Preferred foot"),
          ),
        ],
      )
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add Player",
        ),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Stepper(
              steps: steps,
              currentStep: _currentStep,
              onStepContinue: next,
              onStepTapped: (step) => goTo(step),
              onStepCancel: cancel,
            ),
          )
        ],
      ),
    );
  }
}