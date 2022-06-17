
import 'package:flutter/material.dart';
import 'package:flutter_application_note/widgets/load_bar.dart';
import 'package:provider/provider.dart';

class SciBuffProvider extends ChangeNotifier{
final loadBarList = <LoadBar>[];

//increase list
void addToLoadBarList(LoadBar newBar) {
  loadBarList.add(newBar);
  notifyListeners();
};
//dec list
void decLoadBarList() => loadBarList.removeLast();

}