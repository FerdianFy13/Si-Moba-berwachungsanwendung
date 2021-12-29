import 'package:flutter/material.dart';
import 'package:si_moba_apps/View/Home/information/explore/kentang_e_i_v_h.dart';
import 'package:si_moba_apps/View/Home/information/explore/tomat_e_i_v_h.dart';
import 'package:si_moba_apps/controller/Text.dart';

// ignore: camel_case_types
class Terung_Explore extends StatefulWidget {
  const Terung_Explore({Key key}) : super(key: key);

  @override
  _Terung_ExploreState createState() => _Terung_ExploreState();
}

// ignore: camel_case_types
class _Terung_ExploreState extends State<Terung_Explore> {
  Tomat_Explore tomats = Tomat_Explore();
  TextPlant txt = TextPlant();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 80, 150, 95),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 80, 150, 95),
        title: Text(
          'Eggplant Plants',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Center(
                child: Container(
                  width: 400,
                  height: 500,
                  margin: EdgeInsets.only(
                    top: 50,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                  ),
                  alignment: Alignment.center,
                ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(
                  top: 100,
                  right: 215,
                ),
                child: ClipOval(
                  child: Image(
                    image: AssetImage('assets/images/terung.jpg'),
                    width: 120,
                    height: 120,
                    alignment: Alignment.center,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(
                  top: 120,
                  left: 220,
                ),
                child: Text(
                  'Terung',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                  ),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(
                  top: 160,
                  left: 220,
                ),
                child: Text(
                  '(Solanum melongena)',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(
                  top: 260,
                  left: 85,
                  right: 85,
                ),
                child: Text(
                  txt.terung,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 22,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(
                  top: 582,
                ),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.3,
                  height: 50,
                  child: Container(
                    child: Material(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(20),
                        splashColor: Colors.teal.shade200,
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Center(
                          child: Text(
                            'PREVIOUS',
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
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 582,
                ),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.3,
                  height: 50,
                  child: Container(
                    child: Material(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(20),
                        splashColor: Colors.teal.shade200,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return Kentang_Explore();
                              },
                            ),
                          );
                        },
                        child: Center(
                          child: Text(
                            'NEXT',
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
              ),
            ],
          )
        ],
      ),
    );
  }
}
