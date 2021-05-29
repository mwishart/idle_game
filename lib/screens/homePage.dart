import 'package:flutter/material.dart';
import 'package:idlegame/components/topBar.dart';
import '../constants.dart';
import '../components/homepagetable.dart';
import '../components/topBar.dart';
import 'exploration.dart';
import 'secondPage.dart';

class MyHomePage extends StatefulWidget {

    static const String id = 'mainPage';

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int rowNum = 10; //TODO: this value should come from how much stuff the user has



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
                  topBar(context, ExplorationScreen.id, SecondPage.id,  'Exploration', 'Menu'),

              ),
            ),
            Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.brown,
                width: 300,
                height: 300,
                child: Center(
                  child: Text('Town', style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),),
                ),
              ),

            ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    homePageTable(rowNum), //currently using a Table. Might want to use a ListView in the future
                ],
              ),
            )
          ],
        ),
        ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}


