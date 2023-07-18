
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHorizontalList extends StatelessWidget {
  // https://docs.flutter.dev/cookbook/lists/horizontal-list
  @override
  const MyHorizontalList({super.key});

  @override
  Widget build(BuildContext context) {
    const String title = "Lista horyzontalna";
    // return MaterialApp(   // wyrzycam material app bo sie dwa banery 'debug' pokazują
    //   title: title,
    //   home: Scaffold(
    // appBar: AppBar(
    //   title: const Text(title),
    // ),

    return Scaffold(
        body: Container(
          margin: const EdgeInsets.symmetric(vertical: 50),
          height: 150,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                width: 160,
                height: 100,
                color: Colors.purple,
                child: const Text(
                  "wedded",
                  style: TextStyle(fontSize: 40),
                ),
              ),
              Container(
                  width: 20,
                  color: Colors.lightBlue,
                  child: const Text(
                    "XD",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  )),
              Container(width: 15, color: Colors.redAccent),
              Container(
                width: 45,
                color: Colors.indigo,
              ),
              Container(
                width: 58,
                color: Colors.lightBlueAccent,
              ),
              Container(
                width: 58,
                color: Colors.white60,
              ),
              Container(
                width: 58,
                color: Colors.pink,
              ),
              Container(
                width: 58,
                color: Colors.orange,
              ),
              Container(
                width: 58,
                color: Colors.brown,
              ),
              Container(
                width: 58,
                color: Colors.green,
              ),
              Container(
                width: 58,
                color: Colors.tealAccent,
              ),
              Container(
                width: 58,
                color: Colors.black,
              ),
              Container(
                width: 158,
                color: Colors.amber,
              ),
            ],
          ),
        ));
    // );
  }
}

