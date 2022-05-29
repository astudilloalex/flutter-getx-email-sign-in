import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRepository {
  const AuthRepository();

  Future<UserCredential> signInWithEmail(
    final String username,
    final String password,
  );
}
