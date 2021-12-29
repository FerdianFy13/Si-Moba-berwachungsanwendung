import 'package:flutter/material.dart';
import 'package:si_moba_apps/document/Pertemuan16/mainPage.dart';

class LoginPage extends StatelessWidget {
  // const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          // ignore: deprecated_member_use
          child: RaisedButton(
        child: Text(
          'Login Page',
        ),
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) {
                return MainPage();
              },
            ),
          );
        },
      )),
    );
  }
}
