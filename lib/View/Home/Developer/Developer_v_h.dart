import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:si_moba_apps/View/Home/Statistics/statistics_v_h.dart';
import 'package:si_moba_apps/View/core/about_v_c.dart';
import 'package:si_moba_apps/controller/Text.dart';
// ignore: unused_import
import 'package:si_moba_apps/controller/navigationBar_c.dart';
// ignore: unused_import
import 'package:si_moba_apps/controller/page/auth_service.dart';

class Developer extends StatefulWidget {
  const Developer({Key key}) : super(key: key);

  @override
  _DeveloperState createState() => _DeveloperState();
}

class _DeveloperState extends State<Developer> {
  AuthServiceController auths = AuthServiceController();
  NavigationBar navs = NavigationBar();
  // ignore: non_constant_identifier_names
  About_View_Core about_v_c = About_View_Core();
  TextPlant txt = TextPlant();
  Statistics statistics = Statistics();

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
      body: Center(
        child: Column(
          children: <Widget>[
            Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(
                      left: 20,
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(
                      left: 40,
                      right: 40,
                      top: 15,
                    ),
                    child: Center(
                      child: Text(
                        txt.pkm,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              flex: 2,
            ),
            Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(
                      left: 20,
                      right: 20,
                    ),
                    alignment: Alignment.topLeft,
                    child: Center(
                      child: Text(
                        txt.developer,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              flex: 3,
            ),
            Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    alignment: Alignment.topLeft,
                    child: Center(
                      child: Text(
                        'Developed By Poliwangi',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              flex: 1,
            ),
            Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            alignment: Alignment.topLeft,
                            width: 20,
                            height: 20,
                            margin: EdgeInsets.only(right: 10),
                            child: Image(
                              image: AssetImage('assets/images/Zidan.png'),
                              alignment: Alignment.center,
                            ),
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            child: Container(
                              margin: EdgeInsets.only(right: 35),
                              child: Center(
                                child: Text(
                                  'Naafi Ramadhan',
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            alignment: Alignment.topLeft,
                            width: 20,
                            height: 20,
                            margin: EdgeInsets.only(right: 10),
                            child: Image(
                              image: AssetImage('assets/images/Ferdi.png'),
                              alignment: Alignment.center,
                            ),
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            child: Container(
                              margin: EdgeInsets.only(right: 0),
                              child: Center(
                                child: Text(
                                  'Ferdian Firmansyah',
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
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
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.5,
                          height: 50,
                          child: Container(
                            child: Material(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.transparent,
                              child: InkWell(
                                borderRadius: BorderRadius.circular(20),
                                splashColor: Colors.teal.shade200,
                                onTap: () async {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return About_View_Core();
                                      },
                                    ),
                                  );
                                  // ignore: await_only_futures
                                  // await AuthServiceController();
                                },
                                child: Center(
                                  child: Text(
                                    'LOGOUT',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 56, 111, 68),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              flex: 1,
            ),
            Flexible(
              child: Column(),
              flex: 3,
            )
          ],
        ),
      ),
    );
  }
}
