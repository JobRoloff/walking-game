import 'package:flutter/material.dart';
import 'package:flutter_application_note/models/token.dart';
import 'package:flutter_application_note/providers/sci_buff_provider.dart';
import 'package:provider/provider.dart';

import '../widgets/load_bar.dart';

///side panel if media q is large enough.. else single col layout

///multi col layout:
///
///2:1 panel ratio
///
///main - view loadbars
///
///side - navigational
///

//this is where Media query dictates which widget to apply

class SciScreen extends StatefulWidget {
  const SciScreen({Key? key}) : super(key: key);

  @override
  State<SciScreen> createState() => _SciScreenState();
}

class _SciScreenState extends State<SciScreen> {

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Row(
          children: [
            //main panel
            Container(
              width: constraints.maxWidth * .66,
              child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                return Container(
                  decoration: BoxDecoration(
                    color: Color((getToken("surface"))),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: Container(
                            decoration: BoxDecoration(color: Colors.purple),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <LoadBar>[
                                ...context.watch<SciBuffProvider>().loadBarList
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(16),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 100,
                                width: 100,
                                decoration:
                                    BoxDecoration(color: Colors.blueGrey),
                              ),
                            ]),
                      ),
                    ],
                  ),
                );
              }),
            ),
            //side panel
            Expanded(
              child: Container(
                decoration: BoxDecoration(color: Color(getToken("surface"))),
                child: Column(children: [
                  Container(
                    child: Text("btn1"),
                  ),
                ]),
              ),
            ),
          ],
        );
      },
    );
  }
}

///single col layout
