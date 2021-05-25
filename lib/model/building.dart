import 'dart:convert';
import 'package:flutter/services.dart';

class Building{
  String id;
  int level;
  String type;

  Building(this.id,this.level,this.type);


  Future<void> updateLevel() async{
    final String response = await rootBundle.loadString('assets/sample.json');
    final data = await json.decode(response);
    level = int.parse(data["building"][int.parse(id)]["level"]);
  }

}