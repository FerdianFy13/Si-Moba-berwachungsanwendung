import 'package:flutter/material.dart';
import 'package:si_moba_apps/document/Pertemuan16/secondPage.dart';

class MainPage extends StatelessWidget {
  // const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Page'),
      ),
      body: Center(
          // ignore: deprecated_member_use
          child: RaisedButton(
        child: Text('Go To Second Page'),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return SecondPage();
              },
            ),
          );
        },
      )),
    );
  }
}
