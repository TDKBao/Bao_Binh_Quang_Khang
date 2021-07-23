import 'package:flutter/material.dart';

import 'screens/onboarding_screen.dart';
import 'screens/login_screen.dart';
import 'screens/sigup_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => OnBoardingScreen(),
        '/login': (context) => LoginScreen(),
        '/sign-up': (context) => SignUpSreen(),
      },
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      // home: OnBoardingScreen(),
    );
  }
}
