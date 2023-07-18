// https://docs.flutter.dev/cookbook/lists/grid-lists

import 'dart:core';

import 'package:flutter/material.dart';
import 'my_form_with_validation.dart';
import 'my_grid_list.dart';
import 'my_horizontal_list.dart';
import 'my_standard_basic_list_with_icons.dart';

void main() {
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String appTitle = "Few recepies together";


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // always marked "final".
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  static const TextStyle optionStyle = TextStyle(
    fontStyle: FontStyle.italic,
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );



  static const List<Widget> _widgetOptions = <Widget>[
    MyGridList(),
    MyHorizontalList(),
    StandardBasicList(),
    MyFormWithValidation(),
    Text('4', style: optionStyle),
    Text('5', style: optionStyle),
    Text('6', style: optionStyle),
    Text('7', style: optionStyle),
    Text('8', style: optionStyle),
    Text('9', style: optionStyle),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('All recepiec with lists'),
            ),
            ListTile(
              title: const Text('List as grid'),
              selected: _selectedIndex == 0,
              onTap: () {
                // Update the state of the app
                _onItemTapped(0);
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Horizontal list'),
              selected: _selectedIndex == 1,
              onTap: () {
                // Update the state of the app
                _onItemTapped(1);
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Standard basic list'),
              selected: _selectedIndex == 2,
              onTap: () {
                // Update the state of the app
                _onItemTapped(2);
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text("Form with validation"  , style: TextStyle(color: Colors.lightGreen),),
              selected: _selectedIndex == 3,
              onTap: () {
                _onItemTapped(3);
                // Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}



