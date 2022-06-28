import 'dart:core';

import 'item.dart';


class User{
  // final String _userName;
  List _userInventory = <Map<Item, int>>[];
  // void changeUserName(String inputName) => _userName == inputName;
  void _changeExistingInventory(String inputItemName, int inputQuantityChange ){
    var mapToChange = _userInventory.indexWhere((mapElement) =>mapElement.key.toString() == inputItemName);
    _userInventory.elementAt(mapToChange) == _userInventory.elementAt(mapToChange) + inputQuantityChange;
  }
  User(
      // this._userName,
      this._userInventory
      );

}
