class Item {
  String id;
  int goldValue;
  Enchantment enchantment;

  Item(this.id,this.goldValue,this.enchantment);
}

class Weapon extends Item {
  String weaponType;
  int baseDamage;
  int attackBonus;

  Weapon(this.weaponType, this.baseDamage, this.attackBonus, String id, int goldValue, Enchantment enchantment) : super(id, goldValue, enchantment);
}

class Armor extends Item {
  String type;
  int defenseBonus;

  Armor(this.type, this.defenseBonus, String id, int goldValue, Enchantment enchantment) : super(id, goldValue, enchantment);
}

class Accessory extends Item {
  String slot;

  Accessory(this.slot, String id, int goldValue, Enchantment enchantment) : super(id, goldValue, enchantment);
}


class Enchantment {
  String id;
  String name;

}