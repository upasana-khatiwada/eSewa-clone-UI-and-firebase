import 'package:esewa_clone/auth/screens/phone_signin_screen.dart';
import 'package:flutter/material.dart';

import 'auth/screens/otp_screen.dart';
import 'components/error.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case PhoneSignInScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const PhoneSignInScreen(),
      );
    case OTPScreen.routeName:
      //settings.arguments = The arguments passed to this route
      final verificationId = settings.arguments as String;
      return MaterialPageRoute(
        builder: (context) => OTPScreen(
          verificationId: verificationId,
        ),
      );
      default:
      return MaterialPageRoute(
        builder: (context) => const Scaffold(
          body: ErrorScreen(error: 'This page doesn\'t exist'),
        ),
      );
  }
}
