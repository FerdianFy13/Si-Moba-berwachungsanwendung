// ignore: unused_import
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:si_moba_apps/View/Home/Statistics/statistics_v_h.dart';
// ignore: unused_import
import 'package:si_moba_apps/View/Home/information/explore/jagung_e_i_v_h.dart';
// ignore: unused_import
import 'package:si_moba_apps/View/Home/information/explore/kentang_e_i_v_h.dart';
// ignore: unused_import
import 'package:si_moba_apps/View/Home/information/explore/padi_e_i_v_h.dart';
// ignore: unused_import
import 'package:si_moba_apps/View/Home/information/explore/terung_e_i_v_h.dart';
// ignore: unused_import
import 'package:si_moba_apps/View/Home/information/explore/tomat_e_i_v_h.dart';
// ignore: unused_import
import 'package:si_moba_apps/View/Home/information/explore/wortel_e_i_v_h.dart';

class LogicPakars {
  final TextEditingController phvalue = TextEditingController();
  int _pH;
  // ignore: unused_field
  String _valueplant;

  final List plantCategories = [
    "Padi",
    "Jagung",
    "Terung",
    "Kentang",
    "Tomat",
    "Wortel"
  ];

  // ignore: avoid_return_types_on_setters
  void set pH(int value) =>
      ((value < 0) ? value += 1 : value -= 1) == (value = this._pH);

  // ignore: avoid_return_types_on_setters
  void set valueplant(String value) => (this._valueplant = value);

  void submits() {
    // ignore: unused_local_variable
    AlertDialog alertDialog = AlertDialog(
      content: Container(
        height: 200,
        child: Column(
          children: <Widget>[
            Text(
              'data' + this.phvalue.toString(),
            ),
          ],
        ),
      ),
    );
  }
}
