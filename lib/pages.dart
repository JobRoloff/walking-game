
import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_application_note/providers/googlesignin.dart';
import 'package:flutter_application_note/workout.dart';

LinkedHashSet<String> pageoption = LinkedHashSet();

// {
//   "Map",
//   "Store",
//   "Manage"
// }

class WebPage extends StatefulWidget{
  @override
  State<WebPage> createState() => _WebPageState();
}
class _WebPageState extends State<WebPage>{
  // String _title = PageOption[_curentPage];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: 
        AppBar(
          // title: Text(_title),
          actions: const [
            // logo
            // 2 icon button sets of 3 (premium, sign in, create account) or (notification, streak, profile)
          ],
        ),
      drawer: const SideDrawer(),
      body: Center(child: Column(children:   [
        // ignore: avoid_print
        Text(getAllWorkouts.length.toString()),
        // TabBar(tabs: tabs)
      ],),),
    );
    
  }
}


class SideDrawer extends StatefulWidget{
  const SideDrawer({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState()=> _SideDrawerState();
  }
  @override
  class _SideDrawerState extends State<SideDrawer> {
    @override
  Widget build(BuildContext context){
      return Drawer(
        //surface color
        //text color
        child: ListView(
          shrinkWrap: true,
          children: [
            IconButton(
              icon: const Icon(Icons.login), 
              onPressed: (){},
            )
            //login statud determines 
            //enabled/disabled option of the routes -> view workouts, change days of week, 
            //sign out/login button
            //
            //use context.watch<GoogleSignInProvider>()._____; 
            //in place of the ___, include the variable name that will represent the user's boolean login status           
          ],
        ),
      );
    }
  }

//widget counter for reps 
class CountedListTile extends StatefulWidget {
  CountedListTile({ Key? key }) : super(key: key);
  @override
  State<CountedListTile> createState() => _SetCounterState();
}
class _SetCounterState extends State<CountedListTile> {
  int setsCompleted = 0;
  List<dynamic> visualTapStatus = [
    "1",
    "2",
    "3",
    const Icon(Icons.done),
  ];

  void incrementSetsCompleted(){
    setState((){
      setsCompleted++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: visualTapStatus[setsCompleted],
      title: const Text("a title"),
    );
  }

}