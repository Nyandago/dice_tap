import 'package:flutter/material.dart';

void main() {
  runApp(
     MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepOrange,
        appBar: AppBar(
          title: Text('Dice App'),
          backgroundColor: Colors.blue,
        ),
        body: MyApp(),
      ),
    )
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
          children: [
            Expanded(child: Image.asset('images/dice1.png')),
            Expanded(child: Image.asset('images/dice2.png')),
          ],
        ),
    );
  }
}
