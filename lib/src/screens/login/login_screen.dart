import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_app/blocs/login_bloc/login_bloc.dart';
import 'package:mobile_app/repositories/user_repositories.dart';

import 'login_form.dart';

class LoginScreen extends StatelessWidget {
  final UserRepository _userRepository;

  const LoginScreen({Key? key, required UserRepository userRepository})
      : _userRepository = userRepository,
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(userRepository: _userRepository),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                fit: StackFit.loose,
                children: [
                  Image.asset(
                    'assets/images/cover.png',
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 292,
                  ),
                  Positioned(
                    top: 138,
                    left: 25,
                    child: Text(
                      'Welcome Back!',
                      style: Theme.of(context).textTheme.headline5!.copyWith(
                          fontFamily: 'Nunito-Bold',
                          color: Color(0xff030F09),
                          fontSize: 26),
                    ),
                  ),
                  Positioned(
                    top: 63,
                    left: 25,
                    child: Image.asset(
                      'assets/icons/logoicon.png',
                      width: 18,
                      height: 26,
                    ),
                  ),
                  Positioned(
                      top: 64,
                      left: 53,
                      child: Text(
                        'scratch',
                        style: Theme.of(context).textTheme.subtitle1!.copyWith(
                            fontFamily: 'Nunito-Bold',
                            color: Color(0xff363837),
                            fontSize: 22),
                      )),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 22, 25, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Please login to continue.',
                      style: Theme.of(context).textTheme.subtitle1!.copyWith(
                          fontFamily: 'Nunito',
                          color: Color(0xff606060),
                          fontSize: 15),
                    ),
                    SizedBox(
                      height: 51,
                    ),
                    LoginForm(userRepository: _userRepository,),
                    SizedBox(
                      height: 32,
                    ),
                    Center(
                      child: Column(
                        children: [
                          Text(
                            'New to Scratch?',
                            style:
                                Theme.of(context).textTheme.subtitle1!.copyWith(
                                      fontFamily: 'Nunito',
                                      color: Color(0xffA8A8A8),
                                      fontSize: 15,
                                    ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Create Account Here',
                            style:
                                Theme.of(context).textTheme.subtitle1!.copyWith(
                                      fontFamily: 'Nunito-Bold',
                                      color: Color(0xff30BE76),
                                      fontSize: 17,
                                    ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
