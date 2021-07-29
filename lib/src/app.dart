import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'screens/onboarding_screen.dart';
import 'screens/login_screen.dart';
import 'screens/signup_screen.dart';
import 'screens/forgotpassword_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        // '/': (context) => OnBoardingScreen(),
        // '/login': (context) => LoginScreen(),
        // '/signup': (context) => SignUpScreen(),
        // '/forgotpassword': (context) => ForgotPasswordScreen(),

        '/': (context) => OnBoardingScreen(),
      },
    );
  }
}
