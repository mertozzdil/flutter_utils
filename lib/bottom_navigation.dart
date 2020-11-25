import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation>
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
      ),
      body: new TabBarView(
        children: <Widget>[new NewPage("first"), new NewPage("second")],
        controller: tabController,
      ),
      bottomNavigationBar: new Material(      // <= Olmadan da ekranı sağa sola kaydırarak çalışır.
        color: Colors.teal,
        child: new TabBar(
            controller: tabController,
            tabs: <Widget>[
          new Tab(
            icon: new Icon(Icons.favorite),
          ),
          new Tab(
            icon: new Icon(Icons.email),
          ),
        ]),
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
