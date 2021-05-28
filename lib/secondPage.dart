import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  SecondPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:  _buildListView(),
    );
  }

  Widget _buildListView() {
    return ListView(
        padding: const EdgeInsets.all(16.0),
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
    );
  }
}