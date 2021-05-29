import 'package:flutter/material.dart';
//this is the top navigation bar. I am making it it's own widget. This will definitely needed to be worked on later.
List<Widget> topBar(BuildContext context, String route1, String route2, String routeName1, String routeName2){
  List<Widget> topBar = List<Widget>();
  topBar.add(Expanded(
    child: ElevatedButton(onPressed: (){
      Navigator.pushNamed(context, route1);
    }, child:
    Text(routeName1)),
  ));
  topBar.add(Expanded(
  child: ElevatedButton(onPressed: (){
    Navigator.pushNamed(context, route2);
  }, child:
  Text(routeName2)),
  ));

  return topBar;
}