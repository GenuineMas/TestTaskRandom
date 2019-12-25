
import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  @override
  State createState() => new _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  final Random _random = new Random();
  Color _color = Colors.green;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Center(
      child: new GestureDetector(
        onTap: () {
          setState(() {
            _color = new Color.fromRGBO(_random.nextInt(255),
                _random.nextInt(255), _random.nextInt(255), 0.75);
          });
        },
        child: new Stack(children: <Widget>[
          new Container(
            color: _color,
          ),
          new Align(
            child: Text('Hey there'),
          )
        ]),
      ),
      
    ));
  }
}
