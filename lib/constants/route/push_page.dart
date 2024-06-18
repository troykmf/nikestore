/* Things I want to do in the morning here 
/ 1. Work on the page routing
/ 2. Work on Firbase configuration
/ 3. Work on implement firebase service with the app
/ 4. Splash screen shii
/ 5. Hopefully OTP verification too
 I'll need firebase analytics, firebase core, firebase cloudfirestore, firebase authentication */

import 'package:flutter/material.dart';

Route createRoute(Widget child) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.easeIn;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
