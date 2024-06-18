import 'package:firebase_auth/firebase_auth.dart';

class AuthUser {
  final String uid;
  final String? email;
  final bool isEmailVerified;

  AuthUser({
    required this.uid,
    required this.email,
    required this.isEmailVerified,
  });

  factory AuthUser.fromFirebase(User user) => AuthUser(
        uid: user.uid,
        email: user.email!,
        isEmailVerified: user.emailVerified,
      );
}
