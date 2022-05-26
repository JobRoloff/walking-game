
import 'dart:collection';

import 'package:flutter/cupertino.dart';

class Workout {
  var workoutName = 'Untitled Workout';
  var  agonists = [];
  var antagonists = [];
  var split = 'Not Specified By User';
  var commonDeviations = [];

  Workout(this.workoutName, this.agonists, this.antagonists,this.split, this.commonDeviations){addToSet();}
  
  void addToSet(){
    _allWorkouts.add(this);
  }
}

//get your db data here? : https://github.com/wrkout/exercises.json/blob/master/README.md
  //name, force, mechanic, 1&2 muscles, 



class WorkoutSession extends StatefulWidget {
  WorkoutSession({ Key? key }) : super(key: key);

  @override
  State<WorkoutSession> createState() => _WorkoutSessionState();
  bool? isLegDay;
  //get the workouts a user should do and modify with the user's stats
  final workoutsToDo = HashSet<Workout>();
  // workoutsToDo.add();
}

class _WorkoutSessionState extends State<WorkoutSession> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.all(8),
      
    );
  }
}

Workout calveraises = Workout("Calve Raises",[],[],'trip',[]);
Workout lunges = Workout("Lunges",[],[],'trip',[]);
Workout squats = Workout("Squats",[],[],'trip',[]);

final _allWorkouts = HashSet<Workout>();

get getAllWorkouts => _allWorkouts;
