import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'screens/onboarding_screen.dart';
import 'screens/login_screen.dart';
import 'screens/sigup_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      routes: {
        // '/': (context) => OnBoardingScreen(),
        '/': (context) => LoginScreen(),
        '/sign-up': (context) => SignUpSreen(),
      },
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      // home: OnBoardingScreen(),
    );
  }
}
