import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nike_store/constants/route/route_constants.dart';
import 'package:nike_store/page/authentication/auth_page.dart';
import 'package:nike_store/page/authentication/forgot_password_page.dart';
import 'package:nike_store/page/authentication/sign_in_page.dart';
import 'package:nike_store/page/authentication/sign_up_page.dart';
import 'package:nike_store/page/home/home_page_provider.dart';
import 'package:nike_store/page/onboarding/onboarding_one.dart';
import 'package:nike_store/page/onboarding/onboarding_three.dart';
import 'package:nike_store/page/onboarding/onboarding_two.dart';
import 'package:nike_store/page/splash_page.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomePageProvider(),
        ),
      ],
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Nike Store',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          initialRoute: RouteConstants.splashPageRoute,
          routes: {
            RouteConstants.splashPageRoute: (context) => const SplashPage(),
            RouteConstants.onboardingOneRoute: (context) =>
                const OnboardingOne(),
            RouteConstants.onboardingTwoRoute: (context) =>
                const OnboardingTwo(),
            RouteConstants.onboardingThreeRoute: (context) =>
                const OnboardingThree(),
            RouteConstants.signUpRoute: (context) => const SignUpPage(),
            RouteConstants.signInRoute: (context) => const SignInPage(),
            RouteConstants.forgotPasswordRoute: (context) =>
                const ForgotPasswordPage(),
          },
          home: child,
        ),
        child: const AuthPage(),
      ),
    );
  }
}
