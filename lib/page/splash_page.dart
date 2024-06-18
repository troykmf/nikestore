import 'dart:async';

import 'package:nike_store/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nike_store/constants/route/route_constants.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 2),
      () {
        Navigator.pushReplacementNamed(
          context,
          RouteConstants.onboardingOneRoute,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.blueColor,
      child: Center(
        child: Image.asset('lib/asset/image/logo.png'),
      ),
    );
  }
}
