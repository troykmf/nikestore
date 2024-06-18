import 'package:nike_store/services/auth/auth_provider.dart';
import 'package:nike_store/services/auth/auth_user.dart';
import 'package:nike_store/services/auth/firebase_service.dart';

class AuthService implements AuthProvide {
  final AuthProvide provider;
  AuthService(this.provider);
  factory AuthService.fromFirebase() => AuthService(FirebaseAuthService());

  @override
  Future<void> initialize() => provider.initialize();

// get user
  @override
  AuthUser? get currentUser => provider.currentUser;

// sign in
  @override
  Future<AuthUser> logIn({required String email, required String password}) =>
      provider.logIn(
        email: email,
        password: password,
      );

// sign up
  @override
  Future<AuthUser> createUser(
          {required String email, required String password}) =>
      provider.createUser(
        email: email,
        password: password,
      );

// log out
  @override
  Future<void> logout() => provider.logout();

// email verification
  @override
  Future<void> sendEmailVerification() => provider.sendEmailVerification();

// reset password
  @override
  Future<void> sendResetPassword({required String toEmail}) =>
      provider.sendResetPassword(
        toEmail: toEmail,
      );
}
