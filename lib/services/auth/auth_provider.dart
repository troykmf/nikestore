import 'package:nike_store/services/auth/auth_user.dart';

abstract class AuthProvide {
  Future<void> initialize();

  AuthUser? get currentUser;

  Future<AuthUser> logIn({
    required String email,
    required String password,
  });
  Future<AuthUser> createUser({
    required String email,
    required String password,
  });

  Future<void> sendEmailVerification();

  Future<void> sendResetPassword({
    required String toEmail,
  });

  Future<void> logout();
}
