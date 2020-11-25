import 'package:flutter/material.dart';
import 'package:flutter_utils/bottom_navigation.dart';
import 'package:flutter_utils/bottom_navigation_two.dart';
import 'package:flutter_utils/show_alert.dart';
import 'package:flutter_utils/show_snackbar.dart';
import 'package:flutter_utils/stepper.dart';



void main() => runApp(new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(primarySwatch: Colors.teal),
      //home: new ShowSnackbar(),
      //home: ShowAlert(),
      //home: ShowStep(),
      //home: BottomNavigation(),
      home: BottomNavigationTwo(),
    ));
