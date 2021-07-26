import 'package:firebase_auth/firebase_auth.dart';

class UserRepository {
  final FirebaseAuth _firebaseAuth;

  UserRepository()
      : _firebaseAuth = FirebaseAuth.instance;

  Future<void> signIn(String email, String password) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch(e){
      print(e);
    }
  }
  Future<void> signUp(String email, String password) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch(e){
      print(e);
    }
  }

  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }
  Future<bool> isSignedIn() async {
    var user = await _firebaseAuth.currentUser;
    return user != null;
  }
  Future getUser() async {
    var user = await _firebaseAuth.currentUser;
    return user;
  }
 
  
}