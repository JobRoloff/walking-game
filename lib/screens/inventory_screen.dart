import 'package:flutter/material.dart';
import 'package:flutter_application_note/models/token.dart';
import 'package:flutter_application_note/providers/inventory_n_progress_provider.dart';
import 'package:provider/provider.dart';

import '../widgets/nav_link.dart';
import '../widgets/side_panel.dart';

class InventoryScreen extends StatefulWidget {
  const InventoryScreen({Key? key}) : super(key: key);

  @override
  State<InventoryScreen> createState() => _InventoryScreenState();
}

class _InventoryScreenState extends State<InventoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //main panel
          Expanded(
            flex: 4,
            child: Container(
              color: Color(getToken("surface")),
              child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Your inventory"),
                  Consumer<InventoryNProgressProvider>(
                    builder: (context, value, child) {
                      return ListView(
                        shrinkWrap: true,
                        children: value.currentUserInventory
                            .map(
                              (e) => Container(
                                child: Column(
                                  children: [
                                    //cat
                                    // Text(getCategory(e)),
                                    //data
                                    //   dataListView(
                                    //     shrinkWrap: true,
                                    //       children:
                                    //       getCategoryData(e).map((f) => ItemUI(label: f[0], amt: )).toList()
                                    //
                                    //   )
                                  ],
                                ),
                              ),
                            )
                            .toList(),
                      );
                    },
                  ),
                ],
              )),
              //side panel
            ),
          ),
          SidePanel(


          ),
        ],
      ),
    );
  }
}

class ItemUI extends StatefulWidget {
  final String label;
  final int amt;
  const ItemUI({required this.label, required this.amt, Key? key})
      : super(key: key);

  @override
  State<ItemUI> createState() => _ItemUIState();
}

class _ItemUIState extends State<ItemUI> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.label),
      trailing: Text(widget.amt.toString()),
    );
  }
}
