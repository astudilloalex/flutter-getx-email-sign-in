import 'package:auth_example/src/domain/repositories/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthFirebase implements AuthRepository {
  const AuthFirebase();

  @override
  Future<UserCredential> signInWithEmail(
    final String username,
    final String password,
  ) {
    return FirebaseAuth.instance.signInWithEmailAndPassword(
      email: username,
      password: password,
    );
  }
}
