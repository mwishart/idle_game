import 'dart:convert';
import 'package:flutter/services.dart';

class Building{
  String id;
  int level;
  String type;
  int numWorkers;

  Building(this.id,this.level,this.type,this.numWorkers);


  Future<void> updateLevel() async{
    final String response = await rootBundle.loadString('assets/sample.json');
    final data = await json.decode(response);
    level = int.parse(data["building"][int.parse(id)]["level"]);
  }

}

class VariableResourceBuilding extends Building {
  String targetResource;
  VariableResourceBuilding(this.targetResource) : super('', 0, '', 0);

  updateTargetResource(String target) {
    targetResource = target;
  }
  Future<List> getBuildingStats() async {
    final String response = await rootBundle.loadString('assets/sample.json');
    final data = await json.decode(response);
      List<String> buildingStats = List<String>();
      buildingStats.add(data["building"][int.parse(id)]['type']);
      buildingStats.add(data["building"][int.parse(id)]['level']);
      return data;
  }

}