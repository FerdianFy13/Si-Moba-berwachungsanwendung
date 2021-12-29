import 'package:flutter/material.dart';

void main() => runApp(MyAppWidget());

class MyAppWidget extends StatefulWidget {
  // const MyAppWidget({Key? key}) : super(key: key);

  @override
  _MyAppWidgetState createState() => _MyAppWidgetState();
}

class _MyAppWidgetState extends State<MyAppWidget> {
  int numbers = 1;

  void tekanTombol() {
    setState(() {
      this.numbers++;
    });
  }

  void decrementData() {
    setState(() {
      this.numbers--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('MyApp Widget'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(numbers.toString(),
                  style: TextStyle(
                      color: Colors.redAccent,
                      fontSize: 20 + numbers.toDouble())),
              // ignore: deprecated_member_use
              RaisedButton(
                onPressed: tekanTombol,
                child: Text('Increment Data'),
                color: Colors.amber,
              ),
              // ignore: deprecated_member_use
              RaisedButton(
                onPressed: decrementData,
                child: Text('Decrement Data'),
                color: Colors.greenAccent,
              )
            ],
          ),
        ),
      ),
    );
  }
}
