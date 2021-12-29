// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// // inheritance StatelessWidget in MyApp
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   // method build digunakan untuk mengembalikan sebuah widget dari tampilan stateless widget
//   Widget build(BuildContext context) {
//     // material app merupakan sebuah widgetyang berisi data data yang diperlukan oleh apliasi menggunakan material design
//     return MaterialApp(
//       // property home adalah tampilan awal yang akan ditampilkan oleh si material app itu sendiri
//       // widget Scaffold adalah tampilan dasar dari sebuah aplikasi
//       home: Scaffold(
//         // appbar => judul atau title
//         appBar: AppBar(
//           title: Text('Si Moba'),
//         ),
//         // body => badan
//         body: Center(
//             child: Container(
//                 color: Colors.deepOrangeAccent,
//                 width: 150,
//                 height: 50,
//                 child: Text(
//                   'Ferdian Firmansyah Backend Developer Mobile and Web Developer',
//                   maxLines: 2,
//                   textAlign: TextAlign.center,
//                   overflow: TextOverflow.fade,
//                   softWrap: false,
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontStyle: FontStyle.italic,
//                     fontWeight: FontWeight.bold,
//                     fontSize: 16,
//                     fontFamily: 'Arial, Helvetica',
//                   ),
//                 ))),
//       ),
//     );
//   }
// }
