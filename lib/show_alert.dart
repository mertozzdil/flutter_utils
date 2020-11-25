import 'package:flutter/material.dart';

class ShowAlert extends StatefulWidget {
  @override
  _ShowAlertState createState() => _ShowAlertState();
}

class _ShowAlertState extends State<ShowAlert> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Utils App"),
        ),
        body: new MyBody());
  }
}

class MyBody extends StatelessWidget {
  AlertDialog dialog = new AlertDialog(
  content: new Text("Dialog is up"),
  title: new Text("Hello"),
  );
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
          child: new RaisedButton(
              child: new Text("Click me"),
              onPressed: () => showDialog(context: context, child: dialog),
          )),    );
  }
}
