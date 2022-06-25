


import 'package:flutter/material.dart';

/**
 * Store and mutate the users gameplay data:
 *
 */
class InventoryNProgressProvider with ChangeNotifier{
  int numGuns = 0;
  var currentUserInventory = <Map<InventoryItem, int>>[

  ];
}
class Gun extends Weapon{
  Gun({required name, required value, required double damage, required int volume, required int durability}) : super(name: name, value: value, damage: damage, volume: volume, durability: durability);

  @override
  void trade(int yourItemValue, int otherItemValue) {
    // TODO: implement trade
  }

}
/**
 * Inventory abstract Classes: Weapon, Nourishment, Vehicle, Currency
 *
 */
abstract class InventoryItem  implements ITradeable{
  final String name;
  final int value;

  const InventoryItem( {Key? key, required this.name, required this.value});
}
abstract class Weapon extends InventoryItem {
  final double damage;
  final int volume, durability;

const Weapon({Key? key,required name, required value, required this.damage, required this.volume, required this.durability}) : super(name: name, value: value, key: key);
}

class Stick extends Weapon{
  Stick({required name, required value, required double damage, required int volume, required int durability}) : super(name: name, value: value, damage: damage, volume: volume, durability: durability);

  @override
  void trade(int yourItemValue, int otherItemValue) {
    print("you can trade this stick if you wish.. its worth ${yourItemValue}");
  }

}


abstract class ITradeable{
  void trade(int yourItemValue, int otherItemValue);

}

