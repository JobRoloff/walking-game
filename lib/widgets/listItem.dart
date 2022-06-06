import 'package:flutter/material.dart';

/////////////////////////////////////////////////////

class LoadBar extends StatefulWidget {
  const LoadBar({Key? key}) : super(key: key);

  @override
  State<LoadBar> createState() => _LoadBarState();
}

class _LoadBarState extends State<LoadBar> {
  @override
  Widget build(BuildContext context) {
    return Container();
    //what widget could serve best as a rounded rectangle???
  }
}



//////////////////////////////////////////////////////

class ListItem {
//composed of : label, indicator bar, unit label
  String label;
  String units;

  ListItem({required this.label,required this.units});
}


/////////////////////////////////////////////////////////


class ItemList extends StatefulWidget {
  const ItemList({Key? key}) : super(key: key);

  @override
  State<ItemList> createState() => _ItemListState();
}

class _ItemListState extends State<ItemList> {
  List mylist= [
  // ListItem li1 =
        ListItem(label: "Car", units: "miles/hour"),
  // ListItem li2 =
        ListItem(label: "Jet", units: "miles/minute"),
  ];


  @override
  Widget build(BuildContext context) {
    return Column( children:
        mylist.map((e) => Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[
            Text(e.label),
            Text(e.units),
            LoadBar()
            ],
        )
        )

            .toList());
  }
}
