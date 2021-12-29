import 'package:flutter/material.dart';
import 'package:si_moba_apps/View/Home/Developer/Developer_v_h.dart';
import 'package:si_moba_apps/View/Home/Statistics/statistics_v_h.dart';
import 'package:si_moba_apps/View/Home/information/information_v_h.dart';

class NavigationBar extends StatefulWidget {
  const NavigationBar({Key key}) : super(key: key);

  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  int selectedNavbar = 0;
  int counter = 0;
  // ignore: unused_field
  final List<Widget> _changeBar = [
    Statistics(),
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
