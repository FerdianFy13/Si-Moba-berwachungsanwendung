import 'package:flutter/material.dart';

void main() => runApp(MyAppDragable());

class MyAppDragable extends StatefulWidget {
  // const MyAppDragable({Key? key}) : super(key: key);

  @override
  _MyAppDragableState createState() => _MyAppDragableState();
}

class _MyAppDragableState extends State<MyAppDragable> {
  Color color1 = Colors.red;
  Color color2 = Colors.amber;
  Color color3 = Colors.lightGreen;
  Color targeColor;

  bool isAccept = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Gabut Dragable'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Draggable<Color>(
                  data: color1,
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: color1,
                      shape: StadiumBorder(),
                      elevation: 3,
                    ),
                  ),
                  childWhenDragging: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: Colors.grey,
                      shape: StadiumBorder(),
                      elevation: 3,
                    ),
                  ),
                  feedback: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: color1.withOpacity(0.5),
                      shape: StadiumBorder(),
                      elevation: 3,
                    ),
                  ),
                ),
                Draggable<Color>(
                  data: color2,
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: color2,
                      shape: StadiumBorder(),
                      elevation: 3,
                    ),
                  ),
                  childWhenDragging: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: Colors.grey,
                      shape: StadiumBorder(),
                      elevation: 3,
                    ),
                  ),
                  feedback: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: color2.withOpacity(0.5),
                      shape: StadiumBorder(),
                      elevation: 3,
                    ),
                  ),
                ),
                Draggable<Color>(
                  data: color3,
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: color3,
                      shape: StadiumBorder(),
                      elevation: 3,
                    ),
                  ),
                  childWhenDragging: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: Colors.grey,
                      shape: StadiumBorder(),
                      elevation: 3,
                    ),
                  ),
                  feedback: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: color3.withOpacity(0.5),
                      shape: StadiumBorder(),
                      elevation: 3,
                    ),
                  ),
                ),
              ],
            ),
            DragTarget<Color>(
              onWillAccept: (value) => true,
              onAccept: (value) {
                isAccept = true;
                targeColor = value;
              },
              builder: (context, candidates, rejected) {
                return (isAccept)
                    ? SizedBox(
                        width: 150,
                        height: 150,
                        child: Material(
                          color: targeColor,
                          shape: StadiumBorder(),
                          elevation: 3,
                        ),
                      )
                    : SizedBox(
                        width: 150,
                        height: 150,
                        child: Material(
                          color: Colors.black26,
                          shape: StadiumBorder(),
                          elevation: 3,
                        ),
                      );
              },
            ),
          ],
        ),
      ),
    );
  }
}
