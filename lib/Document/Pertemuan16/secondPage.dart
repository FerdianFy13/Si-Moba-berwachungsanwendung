import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  // const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
          // ignore: deprecated_member_use
          child: RaisedButton(
        child: Text(
          'Go To Main Page',
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      )),
    );
  }
}
