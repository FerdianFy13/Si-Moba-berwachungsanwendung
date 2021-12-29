// Kekurangan dari penggunaan widget column adalah ketika sebuah layar monitor dari user tidak cukup untuk menampilkan widget dari column tersebut
// akan menghasilkan sebuah perintah error 
// untuk mengatasi permasalahan tersebut flutter menyediakan fitur List View yang digunakan ketika widget tidak cukup penggunaan widget ini akan membuat
// widget yang dapat discrool atas dan bawah
// counter digunakan untuk mencatat bilangan dalam widget
import 'package:flutter/material.dart';

void main() => runApp(MyAppListView());

class MyAppListView extends StatefulWidget {
  // const MyAppListView({Key? key}) : super(key: key);

  @override
  _MyAppListViewState createState() => _MyAppListViewState();
}

class _MyAppListViewState extends State<MyAppListView> {
  List<Widget> widgets = [];
  int count = 1;

  // _MyAppListViewState() {
  //   for (int i = 0; i < 40; i++) {
  //     widgets.add(Text(
  //       'Data ' + i.toString(),
  //       style: TextStyle(fontSize: 30),
  //     ));
  //   }
  // }

  // void insertData() => widgets = widgets;
  // void deleteData() => widgets = widgets;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App List View Widget'),
        ),
        body: ListView(
          children: <Widget>[
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  // ignore: deprecated_member_use
                  RaisedButton(
                    onPressed: () {
                      setState(() {
                        widgets.add(Text(
                          'Data ' + count.toString(),
                          style: TextStyle(fontSize: 20),
                        ));
                        count++;
                      });
                    },
                    child: Text('Insert Data'),
                  ),
                  // ignore: deprecated_member_use
                  RaisedButton(
                    onPressed: () {
                      setState(() {
                        widgets.removeLast();
                        count--;
                      });
                    },
                    child: Text('Delete Data'),
                  )
                ]),
            Column(
              children: widgets,
              crossAxisAlignment: CrossAxisAlignment.start,
            )
          ],
        ),
      ),
    );
  }
}
