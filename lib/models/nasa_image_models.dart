import 'package:flutter/material.dart';

class NasaImageModel {

  //class to take care of all nasa images

  static final imagePool = <Map<String, dynamic>>[];//all images used for the app
  //add new images to the app's images

  static set addStaticImages(Map<String, dynamic> imageMap){imagePool.add(imageMap);}
  final _userAvailableImages = [];//all images available to a user
  set addPrivateImages(Map<String, dynamic> newUserImage) {_userAvailableImages.add(newUserImage);}

}