import 'package:flutter/material.dart';
import 'package:si_moba_apps/View/Home/information/explore/jagung_e_i_v_h.dart';
import 'package:si_moba_apps/View/Home/information/explore/kentang_e_i_v_h.dart';
import 'package:si_moba_apps/View/Home/information/explore/padi_e_i_v_h.dart';
import 'package:si_moba_apps/View/Home/information/explore/terung_e_i_v_h.dart';
import 'package:si_moba_apps/View/Home/information/explore/tomat_e_i_v_h.dart';
import 'package:si_moba_apps/View/Home/information/explore/wortel_e_i_v_h.dart';
import 'package:si_moba_apps/View/Home/information/soil/dry_s_i_v_h.dart';
import 'package:si_moba_apps/View/Home/information/soil/fertile_s_i_v_h.dart';
import 'package:si_moba_apps/View/Home/information/soil/moist_s_i_v_h.dart';
// ignore: unused_import
import 'package:si_moba_apps/controller/navigationBar_c.dart';

class Information extends StatefulWidget {
  const Information({Key key}) : super(key: key);

  @override
  _InformationState createState() => _InformationState();
}

class _InformationState extends State<Information> {
  Padi_Explore padis = Padi_Explore();
  Jagung_Explore jagungs = Jagung_Explore();
  Terung_Explore terungs = Terung_Explore();
  Kentang_Explore kentangs = Kentang_Explore();
  Tomat_Explore tomats = Tomat_Explore();
  Wortel_Explore wortels = Wortel_Explore();
  NavigationBar nav = NavigationBar();
  Dry_Soil drys = Dry_Soil();
  Fertile_Soil fertiles = Fertile_Soil();
  Moist_Soil moists = Moist_Soil();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Container(
          margin: EdgeInsets.only(left: 15),
          alignment: Alignment.center,
          child: InkWell(
            child: Image(
              image: AssetImage('assets/images/stsr.png'),
              width: 30,
              height: 30,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return NavigationBar();
                  },
                ),
              );
            },
          ),
        ),
        title: Align(
          alignment: Alignment.center,
          child: Center(
            child: Container(
              width: 40,
              height: 40,
              alignment: Alignment.center,
              child: InkWell(
                child: Image(
                  image: AssetImage('assets/images/simoba_logo.png'),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return NavigationBar();
                      },
                    ),
                  );
                },
              ),
            ),
          ),
        ),
        actions: <Widget>[
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              width: 30,
              height: 30,
              margin: EdgeInsets.only(right: 20),
              child: InkWell(
                child: Image(
                  image: AssetImage('assets/images/developing.png'),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return NavigationBar();
                      },
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
      body: Stack(
        children: <Widget>[
          Container(
            width: 450,
            height: 735,
            margin: EdgeInsets.only(
              top: 20,
              left: 20,
              right: 20,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.green.shade100,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Flexible(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(
                          left: 40,
                        ),
                        child: Text(
                          'Si MOBA',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.black54,
                            decorationStyle: TextDecorationStyle.solid,
                            decorationThickness: 2,
                          ),
                        ),
                      ),
                    ],
                  ),
                  flex: 1,
                ),
                Flexible(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(
                          left: 40,
                        ),
                        child: Text(
                          'Soil Texture',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                    ],
                  ),
                  flex: 1,
                ),
                Flexible(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Stack(
                                    children: <Widget>[
                                      Container(
                                        decoration: BoxDecoration(
                                          color:
                                              Color.fromARGB(255, 80, 150, 95),
                                          borderRadius:
                                              BorderRadius.circular(25),
                                        ),
                                        width: 120,
                                        height: 120,
                                        margin: EdgeInsets.only(
                                          left: 30,
                                        ),
                                      ),
                                      Center(
                                        child: Container(
                                          width: 60,
                                          height: 60,
                                          margin: EdgeInsets.only(
                                            top: 20,
                                            left: 60,
                                            right: 0,
                                          ),
                                          alignment: Alignment.center,
                                          child: Center(
                                            child: InkWell(
                                              onTap: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    // ignore: non_constant_identifier_names
                                                    builder: (Context) {
                                                      return Dry_Soil();
                                                    },
                                                  ),
                                                );
                                              },
                                              child: Image(
                                                image: AssetImage(
                                                    'assets/images/dry.png'),
                                                alignment: Alignment.center,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          'Dry',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        alignment: Alignment.bottomCenter,
                                        margin: EdgeInsets.only(
                                          top: 90,
                                          left: 80,
                                          right: 0,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Stack(
                                    children: <Widget>[
                                      Container(
                                        decoration: BoxDecoration(
                                          color:
                                              Color.fromARGB(255, 80, 150, 95),
                                          borderRadius:
                                              BorderRadius.circular(25),
                                        ),
                                        width: 120,
                                        height: 120,
                                      ),
                                      Center(
                                        child: Container(
                                          width: 60,
                                          height: 60,
                                          margin: EdgeInsets.only(
                                            top: 20,
                                            left: 30,
                                            right: 30,
                                          ),
                                          alignment: Alignment.center,
                                          child: Center(
                                            child: InkWell(
                                              onTap: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    // ignore: non_constant_identifier_names
                                                    builder: (Context) {
                                                      return Fertile_Soil();
                                                    },
                                                  ),
                                                );
                                              },
                                              child: Image(
                                                image: AssetImage(
                                                    'assets/images/fertile.png'),
                                                alignment: Alignment.center,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          'Fertile',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        alignment: Alignment.bottomCenter,
                                        margin: EdgeInsets.only(
                                          top: 90,
                                          left: 40,
                                          right: 40,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Stack(
                                    children: <Widget>[
                                      Container(
                                        decoration: BoxDecoration(
                                          color:
                                              Color.fromARGB(255, 80, 150, 95),
                                          borderRadius:
                                              BorderRadius.circular(25),
                                        ),
                                        width: 120,
                                        height: 120,
                                        margin: EdgeInsets.only(
                                          right: 30,
                                        ),
                                      ),
                                      Center(
                                        child: Container(
                                          width: 60,
                                          height: 60,
                                          margin: EdgeInsets.only(
                                            top: 20,
                                            left: 30,
                                            right: 30,
                                          ),
                                          alignment: Alignment.center,
                                          child: Center(
                                            child: InkWell(
                                              onTap: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    // ignore: non_constant_identifier_names
                                                    builder: (Context) {
                                                      return Moist_Soil();
                                                    },
                                                  ),
                                                );
                                              },
                                              child: Image(
                                                image: AssetImage(
                                                    'assets/images/moist.png'),
                                                alignment: Alignment.center,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          'Moist',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        alignment: Alignment.bottomCenter,
                                        margin: EdgeInsets.only(
                                          top: 90,
                                          left: 45,
                                          right: 40,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  flex: 3,
                ),
                Flexible(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.only(
                              left: 40,
                            ),
                            child: Text(
                              'Plant',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            width: 30,
                            height: 30,
                            margin: EdgeInsets.only(
                              right: 40,
                            ),
                            child: InkWell(
                              child: Image(
                                image: AssetImage('assets/images/exchange.png'),
                              ),
                              onTap: () {},
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  flex: 1,
                ),
                Flexible(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Stack(
                                    children: <Widget>[
                                      Container(
                                        width: 70,
                                        height: 70,
                                        margin: EdgeInsets.only(top: 45),
                                        decoration: ShapeDecoration(
                                          shape: CircleBorder(),
                                          color:
                                              Color.fromARGB(255, 80, 150, 95),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Stack(
                                    children: <Widget>[
                                      Container(
                                        width: 70,
                                        height: 70,
                                        margin: EdgeInsets.only(top: 45),
                                        decoration: ShapeDecoration(
                                          shape: CircleBorder(),
                                          color:
                                              Color.fromARGB(255, 80, 150, 95),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Stack(
                                    children: <Widget>[
                                      Container(
                                        width: 70,
                                        height: 70,
                                        margin: EdgeInsets.only(top: 45),
                                        decoration: ShapeDecoration(
                                          shape: CircleBorder(),
                                          color:
                                              Color.fromARGB(255, 80, 150, 95),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Row(
                                children: [
                                  Container(
                                    width: 100,
                                    height: 100,
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.only(bottom: 50),
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            // ignore: non_constant_identifier_names
                                            builder: (Context) {
                                              return Padi_Explore();
                                            },
                                          ),
                                        );
                                      },
                                      child: Image(
                                        image: AssetImage(
                                            'assets/images/padi.png'),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 100,
                                    height: 100,
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.only(
                                      left: 55,
                                      right: 55,
                                      bottom: 50,
                                    ),
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            // ignore: non_constant_identifier_names
                                            builder: (Context) {
                                              return Jagung_Explore();
                                            },
                                          ),
                                        );
                                      },
                                      child: Image(
                                        image: AssetImage(
                                            'assets/images/jagung.png'),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 110,
                                    height: 110,
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.only(
                                      bottom: 50,
                                    ),
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            // ignore: non_constant_identifier_names
                                            builder: (Context) {
                                              return Terung_Explore();
                                            },
                                          ),
                                        );
                                      },
                                      child: Image(
                                        image: AssetImage(
                                            'assets/images/terung.png'),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                width: 150,
                                height: 150,
                                alignment: Alignment.center,
                                margin: EdgeInsets.only(
                                  top: 49,
                                  left: 5,
                                ),
                                child: Text(
                                  'Padi',
                                  style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                width: 150,
                                height: 150,
                                alignment: Alignment.center,
                                margin: EdgeInsets.only(top: 49, left: 5),
                                child: Text(
                                  'Jagung',
                                  style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                width: 150,
                                height: 150,
                                alignment: Alignment.center,
                                margin: EdgeInsets.only(
                                  top: 49,
                                  right: 5,
                                ),
                                child: Text(
                                  'Terung',
                                  style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  flex: 3,
                ),
                Flexible(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Stack(
                                    children: <Widget>[
                                      Container(
                                        width: 70,
                                        height: 70,
                                        margin: EdgeInsets.only(top: 45),
                                        decoration: ShapeDecoration(
                                          shape: CircleBorder(),
                                          color:
                                              Color.fromARGB(255, 80, 150, 95),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Stack(
                                    children: <Widget>[
                                      Container(
                                        width: 70,
                                        height: 70,
                                        margin: EdgeInsets.only(top: 45),
                                        decoration: ShapeDecoration(
                                          shape: CircleBorder(),
                                          color:
                                              Color.fromARGB(255, 80, 150, 95),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Stack(
                                    children: <Widget>[
                                      Container(
                                        width: 70,
                                        height: 70,
                                        margin: EdgeInsets.only(top: 45),
                                        decoration: ShapeDecoration(
                                          shape: CircleBorder(),
                                          color:
                                              Color.fromARGB(255, 80, 150, 95),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Row(
                                children: [
                                  Container(
                                    width: 100,
                                    height: 100,
                                    alignment: Alignment.center,
                                    margin:
                                        EdgeInsets.only(bottom: 50, left: 19),
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            // ignore: non_constant_identifier_names
                                            builder: (Context) {
                                              return Kentang_Explore();
                                            },
                                          ),
                                        );
                                      },
                                      child: Image(
                                        image: AssetImage(
                                            'assets/images/Kentang.png'),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 100,
                                    height: 100,
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.only(
                                      left: 62,
                                      right: 67,
                                      bottom: 50,
                                    ),
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            // ignore: non_constant_identifier_names
                                            builder: (Context) {
                                              return Tomat_Explore();
                                            },
                                          ),
                                        );
                                      },
                                      child: Image(
                                        image: AssetImage(
                                            'assets/images/Tomat.png'),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 100,
                                    height: 100,
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.only(
                                      bottom: 50,
                                      right: 21,
                                    ),
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            // ignore: non_constant_identifier_names
                                            builder: (Context) {
                                              return Wortel_Explore();
                                            },
                                          ),
                                        );
                                      },
                                      child: Image(
                                        image: AssetImage(
                                            'assets/images/Wortel.png'),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                width: 150,
                                height: 150,
                                alignment: Alignment.center,
                                margin: EdgeInsets.only(
                                  top: 49,
                                  left: 8,
                                ),
                                child: Text(
                                  'Kentang',
                                  style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                width: 150,
                                height: 150,
                                alignment: Alignment.center,
                                margin: EdgeInsets.only(
                                  top: 49,
                                ),
                                child: Text(
                                  'Tomat',
                                  style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                width: 150,
                                height: 150,
                                alignment: Alignment.center,
                                margin: EdgeInsets.only(
                                  top: 49,
                                  right: 5,
                                ),
                                child: Text(
                                  'Wortel',
                                  style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  flex: 3,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
