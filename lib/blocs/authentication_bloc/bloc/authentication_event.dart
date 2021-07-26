import 'package:equatable/equatable.dart';

class AuthenticationEvent extends Equatable{
  @override
  List<Object> get props => [];
}

class AuthenticationStart extends AuthenticationEvent{}

class AuthenticationLogin extends AuthenticationEvent{}

class AuthenticationLogout extends AuthenticationEvent{}