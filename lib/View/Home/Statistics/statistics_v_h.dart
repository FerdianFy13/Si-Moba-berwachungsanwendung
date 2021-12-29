import 'package:flutter/material.dart';
import 'package:si_moba_apps/View/core/about_v_c.dart';
// ignore: unused_import
import 'package:si_moba_apps/controller/navigationBar_c.dart';
import 'package:si_moba_apps/controller/Text.dart';
import 'package:intl/intl.dart';
import 'package:si_moba_apps/controller/sistemPakar.dart';

class Statistics extends StatefulWidget {
  const Statistics({Key key}) : super(key: key);

  @override
  _StatisticsState createState() => _StatisticsState();
}

class _StatisticsState extends State<Statistics> {
  // var date = DateTime.now();
  var day = DateTime.now();
  TextPlant txt = TextPlant();
  final TextEditingController phvaluecontrol = TextEditingController(text: "");

  NavigationBar navs = NavigationBar();
  About_View_Core abouts = About_View_Core();
  LogicPakars logicexpert = LogicPakars();
  String plantvalues;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 80, 150, 95),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 80, 150, 95),
        title: Text(
          'My Plants',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: <Widget>[
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              margin: EdgeInsets.only(right: 20),
              child: Text(
                'Si MOBA',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Flexible(
            child: Row(
              children: <Widget>[
                Flexible(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Center(
                        child: Container(
                          width: 200,
                          alignment: Alignment.center,
                          height: 200,
                          child: Image(
                              image: AssetImage('assets/images/plant_core.png'),
                              fit: BoxFit.contain,
                              repeat: ImageRepeat.noRepeat),
                        ),
                      ),
                    ],
                  ),
                  flex: 2,
                ),
                Flexible(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Flexible(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[],
                        ),
                        flex: 1,
                      ),
                      Flexible(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                'Sistem Monitoring Internet of Things',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              margin: EdgeInsets.only(
                                right: 0,
                              ),
                            ),
                          ],
                        ),
                        flex: 1,
                      ),
                      Flexible(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Column(
                              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Flexible(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      Container(
                                        alignment: Alignment.topLeft,
                                        margin: EdgeInsets.only(
                                          right: 5,
                                        ),
                                        child: Text(
                                          'Fertile',
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  flex: 1,
                                ),
                                Flexible(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Column(
                                            children: <Widget>[
                                              Container(
                                                child: Text(
                                                  'Indicator',
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                margin: EdgeInsets.only(
                                                  right: 0,
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  flex: 1,
                                )
                              ],
                            )
                          ],
                        ),
                        flex: 1,
                      ),
                      Flexible(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Column(
                              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Flexible(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      Container(
                                        alignment: Alignment.topLeft,
                                        margin: EdgeInsets.only(
                                          right: 58,
                                        ),
                                        child: Text(
                                          '' +
                                              DateFormat('EEEE')
                                                  // DateFormat('EEEE, d MMM yyyy')
                                                  .format(day),
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  flex: 1,
                                ),
                                Flexible(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Column(
                                            children: <Widget>[
                                              Container(
                                                child: Text(
                                                  'Day',
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                margin: EdgeInsets.only(
                                                  right: 125,
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  flex: 1,
                                )
                              ],
                            )
                          ],
                        ),
                        flex: 1,
                      ),
                      Flexible(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[],
                        ),
                        flex: 1,
                      )
                    ],
                  ),
                  flex: 1,
                ),
              ],
            ),
            flex: 3,
          ),
          Flexible(
            child: Material(
              color: Color.fromARGB(255, 80, 150, 95),
              child: Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                      color: Colors.white,
                    ),
                    width: 500,
                    height: 320,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        color: Colors.black,
                      ),
                      Flexible(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(
                                left: 50,
                                right: 50,
                              ),
                              child: Text(
                                '' + txt.sts_panen1,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(
                                left: 50,
                                right: 50,
                              ),
                              child: Text(
                                '' + txt.sts_panen2,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        flex: 1,
                      ),
                      Flexible(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Flexible(
                                  child: Container(
                                    child: SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.3,
                                      height: 50,
                                      child: Container(
                                        alignment: Alignment.center,
                                        child: Material(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.transparent,
                                          child: InkWell(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            splashColor: Colors.teal.shade200,
                                            onTap: () {},
                                            child: Center(
                                              child: DropdownButton(
                                                hint: Text(
                                                  'Plant Category',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                iconEnabledColor: Colors.white,
                                                dropdownColor: Color.fromARGB(
                                                    255, 80, 150, 95),
                                                focusColor: Colors.black,
                                                iconDisabledColor: Colors.white,
                                                value: plantvalues,
                                                elevation: 3,
                                                underline: SizedBox(),
                                                items: logicexpert
                                                    .plantCategories
                                                    .map(
                                                  (value) {
                                                    return DropdownMenuItem(
                                                      child: Text(
                                                        value,
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                      ),
                                                      value: value,
                                                    );
                                                  },
                                                ).toList(),
                                                onChanged: (value) {
                                                  setState(
                                                    () {
                                                      plantvalues = value;
                                                    },
                                                  );
                                                },
                                              ),
                                            ),
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                          color:
                                              Color.fromARGB(255, 56, 111, 68),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                      ),
                                    ),
                                  ),
                                  flex: 1,
                                ),
                                Flexible(
                                  child: Container(
                                    child: SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.3,
                                      height: 50,
                                      child: Container(
                                        child: Material(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.transparent,
                                          child: InkWell(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            splashColor: Colors.teal.shade200,
                                            onTap: () {},
                                            child: Center(
                                              child: TextFormField(
                                                textAlign: TextAlign.center,
                                                autocorrect: true,
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                controller: phvaluecontrol,
                                                decoration: InputDecoration(
                                                  hintText: 'pH',
                                                  border: InputBorder.none,
                                                  hintStyle: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                          color:
                                              Color.fromARGB(255, 56, 111, 68),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                      ),
                                    ),
                                  ),
                                  flex: 1,
                                ),
                                Flexible(
                                  child: Container(
                                    width: 50,
                                    height: 50,
                                    alignment: Alignment.center,
                                    child: Image(
                                      image:
                                          AssetImage('assets/images/turbo.png'),
                                    ),
                                  ),
                                  flex: 1,
                                ),
                              ],
                            )
                          ],
                        ),
                        flex: 1,
                      ),
                      Flexible(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Flexible(
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Container(
                                        child: Text(
                                          this.plantvalues != null
                                              ? plantvalues
                                              : 'Plant',
                                          style: TextStyle(
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          'Plant',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700,
                                            fontStyle: FontStyle.italic,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  flex: 2,
                                ),
                                Flexible(
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Container(
                                        child: Text(
                                          '' + phvaluecontrol.text,
                                          style: TextStyle(
                                            fontSize: 30,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          'pH',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700,
                                            fontStyle: FontStyle.italic,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  flex: 2,
                                ),
                                Flexible(
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Container(
                                        child: Text(
                                          this.plantvalues == 'Padi'
                                              ? '6.5'
                                              : this.plantvalues == 'Jagung'
                                                  ? '5.9'
                                                  : this.plantvalues == 'Terung'
                                                      ? '6.75'
                                                      : this.plantvalues ==
                                                              'Kentang'
                                                          ? '5.75'
                                                          : this.plantvalues ==
                                                                  'Tomat'
                                                              ? '5.6'
                                                              : this.plantvalues ==
                                                                      'Wortel'
                                                                  ? '6.4'
                                                                  : phvaluecontrol
                                                                      .text,
                                          style: TextStyle(
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          'pH Offer',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700,
                                            fontStyle: FontStyle.italic,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  flex: 2,
                                ),
                                Flexible(
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Container(
                                        child: Text(
                                          this.plantvalues == 'Padi'
                                              ? 'Slight Acid'
                                              : this.plantvalues == 'Jagung'
                                                  ? 'Moderate Acid'
                                                  : this.plantvalues == 'Terung'
                                                      ? 'Neutral'
                                                      : this.plantvalues ==
                                                              'Kentang'
                                                          ? 'Moderate Acid'
                                                          : this.plantvalues ==
                                                                  'Tomat'
                                                              ? 'Moderate Acid'
                                                              : this.plantvalues ==
                                                                      'Wortel'
                                                                  ? 'Slight Acid'
                                                                  : 'Base Acid',
                                          style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FontStyle.italic,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          'pH Scale',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700,
                                            fontStyle: FontStyle.italic,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  flex: 3,
                                ),
                              ],
                            )
                          ],
                        ),
                        flex: 1,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            flex: 2,
          ),
        ],
      ),
    );
  }
}
