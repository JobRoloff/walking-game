


import 'package:flutter/material.dart';
/**
 * upon login, search user's database. if empty, create some stuff else, read their stuff
 * update database during login/logout flow.. this might create a bug where if the auth
 * is disrupted prior to the user manually loggin in/out, then state wouldn't be saved..
 * what if i cached state into shared preferences as a realtime storage?
 * use provider during gameplay?
 */

class InventoryNProgressProvider with ChangeNotifier{
   int _numHoverCrafts = 0, _numPersonalShips = 0, _numSticks = 0, _numGuns = 10;



   String getCategory(Map<String, dynamic>inputMap){
     String category = inputMap.values.where((element) => element.runtimeType == String).toString();
     return category;
   }
   List<String> getCategoryData(Map<String, dynamic> inputMap){
     List<String> data = [];
     data.add(
         inputMap.values.where((element) => element.runtimeType != String).toString()
     );
     print(data);

     return data;
   }

  void setItemQuantity(dynamic item, int change){
    item += change;
    notifyListeners();
  }

  List <Map<String, dynamic>>currentUserInventory = [
    {
    "Category": "Weapon",
    "Items": {
        // "Gun": _numGuns,
        // "Stick": numSticks,
      },
    },
    {
      "Category": "Vehicle",
      "Items": {
        // "HoverCraft": numHoverCrafts,
        // "PersonalShip": numPersonalShips,
      }
    },

  ];
}


abstract class ITradeable{
  void trade(int yourItemValue, int otherItemValue);

}
abstract class InventoryItem  implements ITradeable{
  String name;
  int value;

  InventoryItem( {Key? key, required this.name, required this.value});
}

abstract class Weapon extends InventoryItem {
  double damage;
  int volume, durability;

  Weapon({required this.damage, required this.volume, required this.durability, Key? key,required name, required value }) : super(name: name, value: value, key: key);
}
class Stick extends Weapon{
  Stick({required name, required value, required double damage, required int volume, required int durability}) : super(name: name, value: value, damage: damage, volume: volume, durability: durability);

  @override
  void trade(int yourItemValue, int otherItemValue) {
    print("you can trade this stick if you wish.. its worth ${yourItemValue}");
  }

}
class Gun extends Weapon{
  Gun({required name, required value, required double damage, required int volume, required int durability}) : super(name: name, value: value, damage: damage, volume: volume, durability: durability);

  @override
  void trade(int yourItemValue, int otherItemValue) {
    // TODO: implement trade
  }

}


abstract class Vehicle extends InventoryItem{
  int speed, durability, volume;

  Vehicle({Key? key, required this.speed, required this.volume, required this.durability, required String name, required int value}) : super(name: name, value: value, key: key);

}
class HoverCraft extends Vehicle{
  HoverCraft({required int speed, required int volume, required int durability, required String name, required int value}) : super(speed: speed, volume: volume, durability: durability, name: name, value: value);

  @override
  void trade(int yourItemValue, int otherItemValue) {
    // TODO: implement trade
  }

}
class PersonalShip extends Vehicle{
  PersonalShip({required int speed, required int volume, required int durability, required String name, required int value}) : super(speed: speed, volume: volume, durability: durability, name: name, value: value);

  @override
  void trade(int yourItemValue, int otherItemValue) {
    // TODO: implement trade
  }

}