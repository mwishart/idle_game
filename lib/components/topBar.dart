import 'package:flutter/material.dart';
//this is the top navigation bar. I am making it it's own widget. This will definitely needed to be worked on later.
List<Widget> topBar(){
  List<Widget> topBar = List<Widget>();
  topBar.add(Expanded(
    child: ElevatedButton(onPressed: (){
      null;
    }, child:
    Text('Exploration')),
  ));
  topBar.add(Expanded(
  child: ElevatedButton(onPressed: (){
  null;
  }, child:
  Text('Menu')),
  ));

  return topBar;
}