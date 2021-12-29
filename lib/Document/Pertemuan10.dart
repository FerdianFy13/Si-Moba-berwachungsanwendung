import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyAppAnimated());

class MyAppAnimated extends StatefulWidget {
  // const MyAppAnimated({Key? key}) : super(key: key);

  @override
  _MyAppAnimatedState createState() => _MyAppAnimatedState();
}

class _MyAppAnimatedState extends State<MyAppAnimated> {
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My App Animated Gesture'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {});
          },
          child: AnimatedContainer(
            duration: Duration(seconds: 1),
            color: Color.fromARGB(255, random.nextInt(256), random.nextInt(256),
                random.nextInt(256)),
            width: 50.0 + random.nextInt(101),
            height: 50.0 + random.nextInt(101),
          ),
        ),
      ),
    ));
  }
}
