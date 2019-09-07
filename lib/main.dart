import 'package:flutter/material.dart';

import './count_text.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int count = 0;

  void increaseCount() {
    setState(() {
      count++;
      print(count);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Counter App'),
          centerTitle: true,
          backgroundColor: Colors.purple,
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: increaseCount,
        ),
        body: Center(
          child: CountText(count),
        ),
      )
    );
  }
}