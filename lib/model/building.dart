import 'dart:convert';
import 'package:flutter/services.dart';

class Building{
  String id;
  int level;
  String type;
  int resource;
  int maxCivs;
  int civsWorking;
  int resourceGenPerTick;

  Building(this.id,this.level,this.type,this.resource,this.maxCivs,this.civsWorking, this.resourceGenPerTick);


  Future<void> updateLevel() async{
    final String response = await rootBundle.loadString('assets/sample.json');
    final data = await json.decode(response);
    level = int.parse(data["building"][int.parse(id)]["level"]);
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

class VariableResourceBuilding extends Building {
  String targetResource;

  VariableResourceBuilding(this.targetResource) : super('', 0, '', 0, 1, 1, 1);

  updateTargetResource(String target) {
    targetResource = target;
  }
}

class CraftingBuilding extends VariableResourceBuilding {
  //something to keep track of what resources are required to produce the target resource, which is an item
  CraftingBuilding() : super('');
}