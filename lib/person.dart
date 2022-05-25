


import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_note/providers/googlesignin.dart';

class Person {
  
  //identify users by their google account auth id

  //if they've never logged in call the constructor

  //if the user don't sign in, their stats will not save... unless I use shared preferences as a temporary on device storage
  Person(){
    initPerson(false);
  }
  void initPerson(bool isNew){
    isNew == true ? workoutAge = DateTime.now().toString() : setWorkoutAge("k");
  }
  //array to store their available days to exercise
  //https://pub.dev/documentation/syncfusion_flutter_calendar/latest/calendar/SfCalendar-class.html

  late String workoutAge;
  set setWorkoutAge(String s){
    workoutAge = s; 
  }


  var workoutAgeOptions = <String>[
    "< 6 months",
    "6 - 12 months",
    "1-2 years",
    "2+ years",
  ];



}


