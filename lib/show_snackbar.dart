import 'package:flutter/material.dart';

class ShowSnackbar extends StatefulWidget {
  @override
  _ShowSnackbarState createState() => _ShowSnackbarState();
}

class _ShowSnackbarState extends State<ShowSnackbar> {
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

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
          child: new RaisedButton(
              child: new Text("Click me"),
              onPressed: () => Scaffold.of(context).showSnackBar(
                  new SnackBar(content: new Text("I'm pressed.")))
          )),
    );
  }
}
