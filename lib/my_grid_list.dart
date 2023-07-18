
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyGridList extends StatelessWidget {
  const MyGridList({super.key});

  // https://docs.flutter.dev/cookbook/lists/grid-lists
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: const [
        Text(
          "1",
          style: TextStyle(fontSize: 160, color: Colors.indigo),
          textAlign: TextAlign.center,
        ),
        Text("2",
            style: TextStyle(
                fontSize: 30,
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic)),
        Text(
          "3",
          style: TextStyle(
            fontSize: 30,
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.right,
        ),
        Text(
          "4",
          style: TextStyle(
            fontSize: 40,
            color: Colors.purple,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        Text("5",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            )),
        Text("XD",
            style: TextStyle(
              fontSize: 130,
              fontWeight: FontWeight.bold,
            )),
      ],
    );
  }
}
