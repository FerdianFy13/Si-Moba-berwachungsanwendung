import 'package:flutter/material.dart';

void main() => runApp(MyAppImage());

class MyAppImage extends StatelessWidget {
  // const MyAppImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('MyApp Image Widget'),
        ),
        body: Center(
          child: Container(
            color: Colors.black,
            width: 200,
            height: 200,
            padding: EdgeInsets.all(5),
            child: Image(
              image: AssetImage(
                'assets/images/ss.jpg',
              ),
              fit: BoxFit.contain,
              repeat: ImageRepeat.repeat,
            ),
          ),
        ),
      ),
    );
  }
}
