import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_app/blocs/authentication_bloc/bloc/authentication_state.dart';
import 'package:mobile_app/repositories/user_repositories.dart';
import 'package:mobile_app/src/screens/home_screen.dart';

import '../blocs/authentication_bloc/bloc/authentication_bloc.dart';
import 'screens/onboarding_screen.dart';
import 'screens/login/login_screen.dart';
import 'screens/sigup_screen.dart';

class App extends StatelessWidget {
  final UserRepository _userRepository;

  App({required UserRepository userRepository})
      : _userRepository = userRepository;
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      home: BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (context, state) {
          if (state is AuthenticationFailure) {
            return LoginScreen(userRepository: _userRepository,);
          }
          if (state is AuthenticationSuccess) {
            return Home(
              user: state.firebaseUser,
            );
          }
          return OnBoardingScreen();
        },
      ),
      routes: {
        // '/': (context) => OnBoardingScreen(),
        '/login': (context) => LoginScreen(
              userRepository: _userRepository,
            ),
        '/sign-up': (context) => SignUpSreen(),
      },
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      // home: OnBoardingScreen(),
    );
  }
}
