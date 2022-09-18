import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int left_idx = 1;
  int right_idx = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
            child: Text(
              'هلا',
              style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255), fontSize: 25),
            ),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                left_idx = Random().nextInt(6) + 1;
                right_idx = Random().nextInt(6) + 1;
              });
            },
            child: Row(children: [
              Expanded(
                child: Image(image: AssetImage('images/dice$left_idx.png')),
              ),
              Expanded(
                child: Image(
                  image: AssetImage('images/dice$right_idx.png'),
                ),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
