import 'package:flutter/material.dart';
import 'package:idlegame/gamemenu.dart';
import 'package:idlegame/screens/exploration.dart';
import 'screens/secondPage.dart';
import 'screens/homePage.dart';
import 'timsTestPage.dart';
//import 'timeKeeper.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(

        primarySwatch: Colors.amber,
      ),
      initialRoute: MyHomePage.id,
      routes: {
        MyHomePage.id: (context) => MyHomePage(),
        SecondPage.id: (context) => SecondPage(),
        ExplorationScreen.id: (context) => ExplorationScreen()
      },
    );
  }
}


