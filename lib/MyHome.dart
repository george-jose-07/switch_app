import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  List<Color> allColor = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.pink,
    Colors.purple,
    Colors.yellow,
    Colors.orange,
    Colors.white,
    Colors.grey,
    Colors.indigo,
    Colors.brown
  ];
  List<Color> allconColor = [
    Colors.yellow,
    Colors.red,
    Colors.indigo,
    Colors.white,
    Colors.green,
    Colors.red,
    Colors.purple,
    Colors.black,
    Colors.white,
    Colors.grey,
    Colors.lime
  ];
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
      if (_counter >= allColor.length) _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: allColor[_counter],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: _incrementCounter,
                  icon: Icon(
                    Icons.lightbulb_outline,
                    color: allconColor[_counter],
                    size: 50,
                  )),
            ],
          )
        ],
      ),
    );
  }
}
