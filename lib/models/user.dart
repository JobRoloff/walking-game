import 'dart:core';

import 'package:flutter/material.dart';

import 'item.dart';


class User{
  late String _name;
  late Image _sprite;
  late String _email;
  late String _teamName;
  late int _attackStrength,_stepsAvailable, _evasionLevel;
  late Map <Item, int>_inventory= {};

  set changeName(String inputName)=> _name = inputName;
  set setSprite(Image inputSprite)=> _sprite = inputSprite;

  addInventory(Item inputItem, int inputQuantity){
    //if items already there, increase quantity by the input quantity
    //if the item isnt there, init the key to the input quanitiy

    /**
     * Note:
     * methods: addEntries(), addAll()  overrides existing values of a given key
     * couldnt find a method that returns a specific key's value...
     */
    if(_inventory.containsKey(inputItem)){
      int x = getValue(inputItem, _inventory);
      _inventory.update(inputItem, (value) => inputQuantity + x);
    }
    else{
      _inventory.putIfAbsent(inputItem, () => inputQuantity);
    }
  }


  // set setEmail( inputEmail)
  // logIn/out();
  // joinTeam();
  // sendTeamInvite();
}
int getValue(Item target, Map<Item, int> inv){
  late int targetValue;
  for (Item i in inv.keys) {
    if (i.name == target.name) {
      targetValue = i.value;
      break;
    }
  }
  return targetValue;
}