import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthServiceModel {
  static FirebaseAuth _auth = FirebaseAuth.instance;

  // anonymos validation
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
}
