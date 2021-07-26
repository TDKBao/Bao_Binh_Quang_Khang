import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_app/blocs/authentication_bloc/bloc/authentication_event.dart';
import 'package:mobile_app/blocs/bloc_observer.dart';
import 'package:mobile_app/repositories/user_repositories.dart';

import 'blocs/authentication_bloc/bloc/authentication_bloc.dart';
import 'src/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Bloc.observer = SimpleBlocObserver();
  final UserRepository userRepository = UserRepository();
  runApp(
    BlocProvider(
      create: (context) => AuthenticationBloc(
        userRepository: userRepository,
      )..add(AuthenticationStart()),
      child: App(
        userRepository: userRepository,
      ),
    ),
  );
}
