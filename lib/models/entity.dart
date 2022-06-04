
import 'package:flutter/material.dart';

class Entity {
  String entityId;
  String entityValue;

  Entity( this.entityId, this.entityValue);

  factory Entity.fromJson(Map<String, dynamic> json){
    return Entity(json["id"],
      json["value"]
    );
  }


}