import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.deepOrange,
      appBar: AppBar(
        title: Text('Dice App'),
        backgroundColor: Colors.blue,
      ),
      body: MyApp(),
    ),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int leftDiceNum = 1;
  int rightDiceNum = 1;

  void changeDice(){
    setState(() {
      leftDiceNum = Random().nextInt(6) + 1;
      rightDiceNum = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              child: Image.asset('images/dice$leftDiceNum.png'),
              onPressed: () {
                changeDice();
              },
            ),
          ),
          Expanded(
            child: TextButton(
              child: Image.asset('images/dice$rightDiceNum.png'),
              onPressed: (){
                changeDice();
              },
            ),
          ),
        ],
      ),
    );
  }
}
