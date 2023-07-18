

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StandardBasicList extends StatelessWidget {
  // https://docs.flutter.dev/cookbook/lists/basic-list
  const StandardBasicList({super.key});

  @override
  Widget build(BuildContext context) {
    const String title = "Lista horyzontalna";
    return Scaffold(
        body: ListView(
      children:   [
        const ListTile(
          leading: Icon(Icons.manage_history_outlined),
          title: Text("ddd"),
        ),
         Container(
          height: 100,
           child: const Text("jakis text do widżetu Container", style: TextStyle(color: Colors.deepOrange, backgroundColor: Colors.amber),),
        ),
        const ListTile(
          leading: Icon(Icons.face_2_sharp),
          title: Text("wscwe"),
        ),
        const ListTile(
          leading: Icon(Icons.ramen_dining_outlined),
          title: Text("ramen")
        )
      ],
    ),
    );
  }
}
