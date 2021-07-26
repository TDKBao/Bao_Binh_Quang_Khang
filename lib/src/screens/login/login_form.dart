import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../blocs/login_bloc/login_bloc.dart';
import '../../../blocs/login_bloc/login_event.dart';
import '../../../blocs/login_bloc/login_state.dart';
import '../../../repositories/user_repositories.dart';

class LoginForm extends StatefulWidget {
  final UserRepository _userRepository;

  const LoginForm({Key? key, required UserRepository userRepository})
      : _userRepository = userRepository,
        super(key: key);
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool get isPopulated =>
      _emailController.text.isNotEmpty && _passwordController.text.isNotEmpty;

  late LoginBloc _loginBloc;
  @override
  void initState() {
    super.initState();
    _loginBloc = BlocProvider.of<LoginBloc>(context);
    _emailController.addListener(_onEmailChange);
    _passwordController.addListener(_onPasswordChange);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
          return Form(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Email address',
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    fontFamily: 'Nunito',
                    color: Color(0xffA8A8A8),
                    fontSize: 15),
              ),
              TextFormField(
                controller: _emailController,
                autocorrect: false,
                validator: (_) {
                  return !state.isEmailValid ? 'Invalid Email' : null;
                },
                keyboardType: TextInputType.emailAddress,
                maxLines: 1,
                minLines: 1,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 13, bottom: 5),
                  isDense: true,
                ),
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontFamily: 'Nunito',
                    color: Color(0xff030F09),
                    fontSize: 18),
              ),
              SizedBox(
                height: 33,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Password',
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        fontFamily: 'Nunito',
                        color: Color(0xffA8A8A8),
                        fontSize: 15),
                  ),
                  Text(
                    'Forgot password?',
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        fontFamily: 'Nunito',
                        color: Color(0xff606060),
                        fontSize: 15),
                  ),
                ],
              ),
              TextFormField(
                controller: _passwordController,
                autocorrect: false,
                validator: (_) {
                  return !state.isPasswordValid ? 'Invalid Password' : null;
                },
                obscureText: true,
                maxLines: 1,
                minLines: 1,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 13, bottom: 5),
                  isDense: true,
                ),
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontFamily: 'Nunito',
                    color: Color(0xff030F09),
                    fontSize: 18),
              ),
              SizedBox(
                height: 32,
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Color(0xff30BE76)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    )),
                  ),
                  onPressed: () => {
                    _onFormSubmitted(),
                    // Navigator.pop(context), // pop current page
                    // Navigator.pushNamed(context, "/"),
                  },
                  child: Text(
                    'Login',
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                          fontFamily: 'Nunito-Bold',
                          color: Colors.white,
                          fontSize: 17,
                        ),
                  ),
                ),
              ),
            ],
          ));
        },
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _onEmailChange() {
    _loginBloc.add(LoginEmailChange(email: _emailController.text));
  }

  void _onPasswordChange() {
    _loginBloc.add(LoginPasswordChanged(password: _passwordController.text));
  }

  void _onFormSubmitted() {
    _loginBloc.add(LoginWithButtonPressed(
        email: _emailController.text, password: _passwordController.text));
  }
}
