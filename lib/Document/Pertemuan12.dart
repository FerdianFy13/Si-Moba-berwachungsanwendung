import 'package:flutter/material.dart';

void main() => runApp(MyAppStackAlign());

class MyAppStackAlign extends StatelessWidget {
//   const MyAppStackAlign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'MyApp Stack Align Widget',
          ),
        ),
        body: Stack(
          children: <Widget>[
            // background
            Column(children: <Widget>[
              Flexible(
                flex: 1,
                child: Row(children: <Widget>[
                  Flexible(
                    child: Container(
                      color: Colors.white,
                    ),
                    flex: 1,
                  ),
                  Flexible(
                    child: Container(
                      color: Colors.black12,
                    ),
                    flex: 1,
                  )
                ]),
              ),
              Flexible(
                flex: 1,
                child: Row(children: <Widget>[
                  Flexible(
                    child: Container(
                      color: Colors.black12,
                    ),
                    flex: 1,
                  ),
                  Flexible(
                    child: Container(
                      color: Colors.white,
                    ),
                    flex: 1,
                  )
                ]),
              ),
            ]),
            // listview
            ListView(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        'Machine Learning merupakan sebuah cabang ilmu yang digunakan dalam AI',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        'Machine Learning merupakan sebuah cabang ilmu yang digunakan dalam AI',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        'Machine Learning merupakan sebuah cabang ilmu yang digunakan dalam AI',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        'Machine Learning merupakan sebuah cabang ilmu yang digunakan dalam AI',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        'Machine Learning merupakan sebuah cabang ilmu yang digunakan dalam AI',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        'Machine Learning merupakan sebuah cabang ilmu yang digunakan dalam AI',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        'Machine Learning merupakan sebuah cabang ilmu yang digunakan dalam AI',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        'Machine Learning merupakan sebuah cabang ilmu yang digunakan dalam AI',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        'Machine Learning merupakan sebuah cabang ilmu yang digunakan dalam AI',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        'Machine Learning merupakan sebuah cabang ilmu yang digunakan dalam AI',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        'Machine Learning merupakan sebuah cabang ilmu yang digunakan dalam AI',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        'Machine Learning merupakan sebuah cabang ilmu yang digunakan dalam AI',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            // button
            // ignore: deprecated_member_use
            Align(
              alignment: Alignment(0, 0.95),
              // ignore: deprecated_member_use
              child: RaisedButton(
                child: Text('Button Accept'),
                color: Colors.amber,
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
