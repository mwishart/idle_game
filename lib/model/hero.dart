import 'package:idlegame/globals.dart' as globals;

class Hero {
  String name;
  String fightingType;

  int level;
  int attack;
  int health;
  int defense;

  int skillLevel;
  int navigationLevel;

  //dictionary of items (object)
  var equipment = {};

  //dictionary of traits (object)
  var traits = {};

  Hero(this.name,this.fightingType,this.level,this.attack,this.health,this.defense,this.skillLevel,this.navigationLevel,this.equipment,this.traits);

}