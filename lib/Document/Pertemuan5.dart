import 'package:flutter/material.dart';

void main() => runApp(MyApp3());

class MyApp3 extends StatelessWidget {
  // const MyApp3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('MyApp Container'),
        ),
        body: Container(
          color: Colors.red,
          margin: EdgeInsets.fromLTRB(10, 15, 20, 25),
          // padding: EdgeInsets.all(10),
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: <Color>[Colors.amber, Colors.blue])),
            // margin: EdgeInsets.all(10),
          ),
        ),
      ),
    );
  }
}
