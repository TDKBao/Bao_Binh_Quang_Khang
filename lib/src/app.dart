import 'package:flutter/material.dart';

import 'screens/login_screen.dart';
import 'screens/sigup_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
       routes: {
            '/': (context) => SigUpSreen(),
            '/Login': (context) => LoginSreen()
          }
    );
  }
}