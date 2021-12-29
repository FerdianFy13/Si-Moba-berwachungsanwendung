import 'package:flutter/material.dart';
import 'package:si_moba_apps/View/core/about_v_c.dart';

void main() => runApp(MyAppFeature());

class MyAppFeature extends StatefulWidget {
  // const MyAppFeature({Key? key}) : super(key: key);

  @override
  _MyAppFeatureState createState() => _MyAppFeatureState();
}

class _MyAppFeatureState extends State<MyAppFeature> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: About_View_Core(),
    );
  }
}
