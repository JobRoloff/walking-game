
import 'package:flutter/material.dart';

abstract class Page extends StatefulWidget{
  const Page({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _PageState();
}

class _PageState extends State<Page>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const SideDrawer(),
    );
  }
}

//for all platform types
class WebPage extends StatefulWidget{
  final String _title = '';
  const WebPage(thisTitle);
  @override
  State<WebPage> createState() => _WebPageState();
}
class _WebPageState extends State<WebPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: 
        AppBar(
          title: Text(widget._title),
          actions: const [
            // logo
            // 2 icon button sets of 3 (premium, sign in, create account) or (notification, streak, profile)
          ],
        ),
      drawer: const SideDrawer(),
      body: Center(child: Column(children:  const [
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
              onPressed: (){}
              
              , )
            //navigation options dependent on :  (login status)

            //sign out/ log in button
          
          ],
        ),
      );
    }
  }



class AllNotes extends WebPage {
  const AllNotes(String title) : super(title);

  // const AllNotes({ Key? key }) : super(key: key);

  @override
  State<AllNotes> createState() => _AllNotesState();
}

class _AllNotesState extends State<AllNotes> {
  int numberNotes = 0;
  @override
  Widget build(BuildContext context) {
    return Column( children:[
    // ReorderableListView.builder(
    //   itemCount: numberNotes,
    //   itemBuilder: , 
    //   onReorder: (int oldIndex, int newIndex) {  },),
    FloatingActionButton(onPressed: (){})
    ]

    );
    
  }

  void incNumberNotes(){
    numberNotes++;
  }
}