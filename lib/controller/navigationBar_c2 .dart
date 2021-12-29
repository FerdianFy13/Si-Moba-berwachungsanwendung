import 'package:flutter/material.dart';
import 'package:si_moba_apps/View/Home/Developer/Developer_v_h.dart';
// ignore: unused_import
import 'package:si_moba_apps/View/Home/Statistics/statistics_v_h.dart';
import 'package:si_moba_apps/View/Home/Statistics/statistics_v_h_2.dart';
import 'package:si_moba_apps/View/Home/information/information_v_h.dart';

class NavigationBar2 extends StatefulWidget {
  const NavigationBar2({Key key}) : super(key: key);

  @override
  _NavigationBar2State createState() => _NavigationBar2State();
}

class _NavigationBar2State extends State<NavigationBar2> {
  int selectedNavbar = 0;
  int counter = 0;
  // ignore: unused_field
  final List<Widget> _changeBar = [
    Statistics2(),
    Information(),
    Developer(),
  ];

  void incrementBar() {
    setState(
      () {
        counter++;
      },
    );
  }

  void onTapBar(int index) {
    setState(() {
      selectedNavbar = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _changeBar[selectedNavbar],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.grey.shade50,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart_sharp),
              label: 'Statistics',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.info_outline),
              label: 'Information',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.admin_panel_settings_outlined),
              label: 'Developer',
            ),
          ],
          currentIndex: selectedNavbar,
          selectedItemColor: Colors.green.shade800,
          elevation: 1,
          unselectedItemColor: Colors.black,
          // showUnselectedLabels: true,
          onTap: onTapBar,
          // onTap: changeNavbar,
        ),
      ),
    );
  }
}
