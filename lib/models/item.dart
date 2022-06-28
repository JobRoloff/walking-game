import 'package:flutter/material.dart';

abstract class Item{
   final String name;
   final int value;
   Item({required this.name, required this.value});
}

abstract class Weapon extends Item{
  final int attackDamage;
  String sound;
  String makeSound(){return sound;}

  Weapon({required this.attackDamage,required this.sound, required String name,required int value}) : super(name: name, value: value);
}

class Gun extends Weapon{
  Gun({required int attackDamage, required String sound, required String name, required int value}) : super(sound: sound, attackDamage: attackDamage, name: name, value: value);
}


class Vehicle extends Item{
  int speed;
  Vehicle({required this.speed, required String name, required int value}): super(name: name,value: value);
}