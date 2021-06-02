import 'package:idlegame/globals.dart' as globals;
import 'item.dart';

class Hero {
  String name;
  String fightingType;

  int level;
  int baseAttack;
  int baseHealth;
  int baseDefense;

  int totalAttack;
  int totalHealth;
  int totalDefense;

  int skillLevel;
  int navigationLevel;

  //equipment
  Armor armor;
  Weapon weapon;
  Accessory accessory1;
  Accessory accessory2;

  //dictionary of traits (object)
  var traits = {};

  Hero(this.name,this.fightingType,this.level,this.baseAttack,this.baseHealth,this.baseDefense,this.skillLevel,this.navigationLevel,this.traits);

  calculateTotalStats() {
    totalAttack = baseAttack + weapon.attackBonus;
    totalDefense = baseDefense + armor.defenseBonus;
    //todo: account for traits and enchantments that add to stats. Need to figure out exactly how traits and enchantments will work first lol
  }

}