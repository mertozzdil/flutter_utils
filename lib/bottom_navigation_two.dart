import 'package:flutter/material.dart';

class BottomNavigationTwo extends StatefulWidget {
  @override
  _BottomNavigationTwoState createState() => _BottomNavigationTwoState();
}

class _BottomNavigationTwoState extends State<BottomNavigationTwo>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = new TabController(length: 2, vsync: this);
  }

  @override
  void Dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Utils App"),
        bottom: new TabBar(
            controller: tabController,
            tabs: <Widget>[
              new Tab(
                icon: new Icon(Icons.favorite),
              ),
              new Tab(
                icon: new Icon(Icons.email),
              ),
            ])
      ),
      body: new TabBarView(
        children: <Widget>[new NewPage("first"), new NewPage("second")],
        controller: tabController,
      ),
    );
  }
}

class NewPage extends StatelessWidget {
  final String title;
  NewPage(this.title);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Text(title),
      ),
    );
  }
}
