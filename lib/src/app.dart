import 'package:flutter/material.dart';
import 'package:mobile_app/src/screens/onboarding.dart';

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => OnBoardingScreen(),
      },
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      // home: OnBoardingScreen(),
    );
  }
}
