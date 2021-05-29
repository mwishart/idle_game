import 'package:flutter/material.dart';
import 'homePage.dart';
import 'exploration.dart';
import '../components/topBar.dart';


class SecondPage extends StatefulWidget {
  static const String id = 'gameMenu';

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:
      Center(child:
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              children:
              topBar(context, MyHomePage.id, ExplorationScreen.id,  'Home', 'Exploration'),

            ),
          ),
      Expanded(
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: <Widget>[
            Container(
              height: 150,
              child: Text('Menu'),
            ),
            Container(
              height: 150,
              child: Text('Stats for stuff'),
            ),
            Container(
              height: 150,
              child: Text('more stats for stuff'),
            ),
            Container(
              height: 150,
              child: Text('more stats'),
            ),
            Container(
              height: 150,
              child: Text('stats stuff'),
            ),
          ],
        ),
      ),
        ],
      ),
      ),
    );
  }

  }
