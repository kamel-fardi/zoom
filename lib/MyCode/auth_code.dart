import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class authcode {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  Stream<User?> get authchanges => _auth.authStateChanges();
  User? get user => _auth.currentUser;
  SignInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;
    final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken, idToken: googleAuth?.idToken);
    UserCredential userCredential =
        await _auth.signInWithCredential(credential);
    User? user = userCredential.user;
    if (user != null) {
      if (userCredential.additionalUserInfo!.isNewUser) {
        _firestore.collection('users').doc(user.uid).set({
          'username': user.displayName,
          'uid': user.uid,
          'image': user.photoURL,
        });
      }
    }
  }
}
