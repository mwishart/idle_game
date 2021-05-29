import 'package:flutter/material.dart';
import 'homePage.dart';
import 'secondPage.dart';
import '../components/topBar.dart';

class ExplorationScreen extends StatefulWidget {
  static const String id = 'exploration';

  @override
  _ExplorationScreenState createState() => _ExplorationScreenState();
}

class _ExplorationScreenState extends State<ExplorationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            children: [
        Padding(
        padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children:
          topBar(context, MyHomePage.id, SecondPage.id,  'Home', 'Menu'),

        ),
      ), ],
        ),
      ),
    );
  }
}
