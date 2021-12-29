import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:si_moba_apps/model/firebase_m.dart';

class AuthServiceController extends AuthServiceModel {
  static FirebaseAuth _auth = FirebaseAuth.instance;

  // ignore: missing_return
  static Future<User> signInAnonymus() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User firebaseUser = result.user;

      return firebaseUser;
    } catch (e) {
      print(e.toString());

      // return null;
    }
  }
 
  // validation for new user account signup
  static Future<User> signUp(String email, String password) async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      User firebaseUser = result.user;
      return firebaseUser;
    } catch (e) {
      print(
        e.toString(),
      );
      // "there is an error and try again");
      return null;
    }
  }

  // validation for signin after the user signs up stored in firebase
  static Future<User> signIn(String email, String password) async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();

    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      User user = result.user;

      return user;
    } catch (e) {
      print(e.toString());

      return null;
    }
  }
}

//   // // ignore: missing_return
//   // static Future<void> signOut() {
//   //   _auth.signOut();
//   // }

//   // // ignore: non_constant_identifier_names
//   // static Stream<User> get FirebaseUserStream => _auth.authStateChanges();
// }
