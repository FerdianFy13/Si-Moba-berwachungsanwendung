import 'package:flutter/material.dart';

void main() => runApp(MyAppTextWidget());

class MyAppTextWidget extends StatelessWidget {
  // const MyAppTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('MyApp Text Widget'),
        ),
        body: Center(
          child: Text(
            'Program Machine Learning',
            style: TextStyle(
                fontFamily: 'CrashLandingBB',
                fontSize: 30,
                fontStyle: FontStyle.italic,
                decoration: TextDecoration.overline,
                decorationColor: Colors.red,
                decorationThickness: 5,
                decorationStyle: TextDecorationStyle.wavy),
          ),
        ),
      ),
    );
  }
}
