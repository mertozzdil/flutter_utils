import 'package:flutter/material.dart';

class ShowStep extends StatefulWidget {
  @override
  _ShowStepState createState() => _ShowStepState();
}

class _ShowStepState extends State<ShowStep> {
  int currentStep = 0;
  List<Step> mySteps = [
    new Step(
        title: new Text("Step 1"),
        content: new Text("Some content 1"),
        isActive: true),
    new Step(
        title: new Text("Step 2"),
        content: new Text("Some content 2"),
        isActive: true),
    new Step(
        title: new Text("Step 3"),
        content: new Text("Some content 3"),
        isActive: true)
  ];
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Utils App"),
        ),
        body: new Container(
          child: new Stepper(
            steps: mySteps,
            currentStep: this.currentStep,
            type: StepperType.vertical,
          ),
        ));
  }
}
