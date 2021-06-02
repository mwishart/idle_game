class Item {
  String id;
  String name;
  int goldValue;
  Enchantment enchantment;


  Item(this.name);
}

class Weapon extends Item {
  String weaponType;
  int baseDamage;


  Weapon(String name) : super(name);

}

class Enchantment {
  String id;
  String name;

}