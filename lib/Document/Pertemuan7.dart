import 'package:flutter/material.dart';

void main() => runApp(MyAppAnonymus());

class MyAppAnonymus extends StatefulWidget {
  // const MyAppAnonymus({Key? key}) : super(key: key);

  @override
  _MyAppAnonymusState createState() => _MyAppAnonymusState();
}

class _MyAppAnonymusState extends State<MyAppAnonymus> {
  String message;

  void buttonAccept() {
    setState(() {
      this.message = 'After Accpet Button';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Anonymus Method'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                message.toString(),
                style: TextStyle(fontSize: 20),
              ),
              // ignore: deprecated_member_use
              RaisedButton(
                onPressed: buttonAccept,
                child: Text('After Accept'),
                color: Colors.amber,
              ),
              // ignore: deprecated_member_use
              RaisedButton(
                // example anonymus method
                onPressed: () {
                  setState(() {
                    this.message = 'Before Accept Button';
                  });
                },
                child: Text('Before Accept'),
                color: Colors.red,
              )
            ],
          ),
        ),
      ),
    );
  }
}
