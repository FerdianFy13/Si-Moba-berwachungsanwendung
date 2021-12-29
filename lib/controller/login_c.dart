import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginController {
  // ignore: unused_field
  TextEditingController _emailController = TextEditingController(text: "");
  // ignore: unused_field
  TextEditingController _passwordController = TextEditingController(text: "");

  // ignore: avoid_return_types_on_setters
  void set emailController(TextEditingController value) =>
      _emailController = value;
  // ignore: avoid_return_types_on_setters
  void set passwordController(TextEditingController value) =>
      _passwordController = value;
  // ignore: unused_field

  void submits(BuildContext context, String email, String password) {
    if (email.isEmpty || password.isEmpty) {
      final snackBar = SnackBar(
        duration: const Duration(seconds: 5),
        content: Text("Email dan password harus diisi"),
        backgroundColor: Colors.red,
      );

      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      return;
    }

    AlertDialog alert = AlertDialog(
      title: Text("Login Berhasil"),
      content: Container(
        child: Text("Selamat Anda Berhasil login"),
      ),
      actions: [
        TextButton(
          child: Text('Ok'),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ],
    );

    showDialog(context: context, builder: (context) => alert);
    return;
  }

  // void get emailC => _emailController.text;
  // void get passwordC => _passwordController.text;
  var _formKey = GlobalKey<FormState>();
  var isLoading = false;

  void submit() {
    final isValid = this._formKey.currentState.validate();
    if (isValid) {
      return;
    }
    _formKey.currentState.save();
  }

  // ignore: avoid_return_types_on_setters
  void set formKey(void formKey) => formKey = this._formKey;
}
