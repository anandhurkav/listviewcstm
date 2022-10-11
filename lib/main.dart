import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(DemoApp());
}

class DemoApp extends StatefulWidget {
  
  @override
  State<StatefulWidget> createState() {
    return DemoAppstate();
  }
}

class DemoAppstate extends State<DemoApp> {
  final item = List<String>.generate(15, (i) => "Item $i");
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('Listview Custom')),
            body: ListView.custom(
              childrenDelegate:
                  SliverChildBuilderDelegate((BuildContext contex, int index) {
                return Card(
                  color: Colors.lightBlue,
                  child: Padding(
                    child: Text(item[index]),
                    padding: EdgeInsets.all(50),
                  ),
                );
              }),
            )));
  }
}
