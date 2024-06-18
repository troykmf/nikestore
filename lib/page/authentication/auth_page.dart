import 'package:flutter/material.dart';
import 'package:nike_store/page/authentication/sign_in_page.dart';
import 'package:nike_store/page/home/home_page.dart';
import 'package:nike_store/services/auth/auth_service.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: AuthService.fromFirebase().initialize(),
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.waiting:
            return const Center(
              child: CircularProgressIndicator(),
            );
          case ConnectionState.done:
            final user = AuthService.fromFirebase().currentUser;
            if (user != null) {
              if (user.isEmailVerified) {
                return const HomePage();
              } else {
                return const SignInPage();
              }
            } else {
              return const SignInPage();
            }
          default:
            return const Center(
              child: CircularProgressIndicator(),
            );
        }
      },
    );
  }
}
