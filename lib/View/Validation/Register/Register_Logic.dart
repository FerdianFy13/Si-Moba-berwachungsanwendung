import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:si_moba_apps/View/Validation/Login/login_v_v.dart';
import 'package:si_moba_apps/View/Validation/Register/register_v_v.dart';

class RegisterLogic extends StatelessWidget {
  const RegisterLogic({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    User firebaseUser = Provider.of<User>(context);
    return (User != null) ? Register() : Login();
  }
}
