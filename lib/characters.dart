
import 'dart:collection';

import 'package:flutter/material.dart';

class Character {
  String _name;
  String _icon;

  Character(this._name, this._icon);

  String get getName => _name;
  set setName(String newName) => _name = newName;
  String get getIcon => _icon;
  set setIcon(String newIcon) => _icon = newIcon;
}

class ChillCharacter extends Character{
  String _tip;

  ChillCharacter(String name, this._tip) : super(name, "C");
}

  ChillCharacter RoleModel = ChillCharacter("Zee", "breathe");

Set<ChillCharacter> chillCharacterSet = {
  RoleModel,
};



class FightingCharacter extends Character{
  int _maxHealth;
  int _currentHealth;
  int _hitPoints;

  FightingCharacter(this._maxHealth, this._currentHealth, this._hitPoints, String name, String icon) : super(name, icon);

  int get getMaxHealth => _maxHealth;
  set setMaxHealth(int newMaxHealth) => _maxHealth = newMaxHealth;

  int get getCurrentHealth => _currentHealth;
  set setCurrentHealth(int newCurrentHealth) => _currentHealth = newCurrentHealth;

  int get getHitPoints => _hitPoints;
  set setHitPoints(int newHitPoints) => _hitPoints = newHitPoints;
}

class Enemy extends FightingCharacter {

  late int _spawnLevel;

  Enemy(int maxHealth, int currentHealth, int hitPoints,  this._spawnLevel, String name) : super(maxHealth, currentHealth, hitPoints, name, "E");

  // Set get getEnemySet => enemySet;

  int get getSpawnLevel => _spawnLevel;
  set setSpawnLevel(int newSpawnLevel) => _spawnLevel = newSpawnLevel;

}

Enemy Bobbert = Enemy(100, 100, 20, 1, "Sir Dr.Bobbert");
Enemy EmoDog = Enemy(300, 300, 40, 3, "That Duggie Eugine");
Enemy Zimma = Enemy(200, 200, 33, 2, "Zimmie 3000");

Set<Enemy> enemySet = {
  Bobbert,
  EmoDog,
  Zimma
};

get getEnemySet => enemySet;

class Hero extends FightingCharacter {
  var _id;

  Hero(int maxHealth, int currentHealth, int hitPoints, String name, String icon) : super(maxHealth, currentHealth, hitPoints, name, "H");

  get getId => _id;
  set setId(Key newId) => _id = newId;

}

