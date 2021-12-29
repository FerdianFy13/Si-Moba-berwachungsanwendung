import 'package:flutter/material.dart';

void main() => runApp(MyAppFlexible());

class MyAppFlexible extends StatelessWidget {
  // const MyAppFlexible({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App Flexible Widget'),
        ),
        body: Column(
          children: <Widget>[
            Flexible(
              flex: 1,
              child: Container(
                child: Row(
                  children: <Widget>[
                    Flexible(
                      flex: 1,
                      child: Container(
                        color: Colors.yellow,
                        margin: EdgeInsets.all(5),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        color: Colors.orange,
                        margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        color: Colors.pink,
                        margin: EdgeInsets.all(5),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 2,
              child: Container(
                color: Colors.green,
                margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                color: Colors.blue,
                margin: EdgeInsets.all(5),
              ),
            )
          ],
        ),
      ),
    );
  }
}
