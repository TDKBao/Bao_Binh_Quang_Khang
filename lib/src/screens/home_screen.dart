import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_app/blocs/authentication_bloc/bloc/authentication_bloc.dart';
import 'package:mobile_app/blocs/authentication_bloc/bloc/authentication_event.dart';
import 'package:mobile_app/blocs/authentication_bloc/bloc/authentication_state.dart';

class Home extends StatelessWidget {
  final User user;

  const Home({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
            child: Column(
          children: [
            Text("Home" + " hello ${user.email}"),
            BlocBuilder<AuthenticationBloc, AuthenticationState>(
              builder: (context, state) {
                return TextButton(onPressed: () {
                  BlocProvider.of<AuthenticationBloc>(context).add(AuthenticationLogout());
                }, child: Text("Logout"));
              },
            )
          ],
        )),
      ),
    );
  }
}
