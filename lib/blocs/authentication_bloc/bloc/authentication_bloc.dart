import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_app/repositories/user_repositories.dart';

import 'authentication_event.dart';
import 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final UserRepository _userRepository;
  AuthenticationBloc({required UserRepository userRepository})
      : _userRepository = userRepository,
        super(AuthenticationInitial());

  @override
  Stream<AuthenticationState> mapEventToState(
      AuthenticationEvent event) async* {
    if (event is AuthenticationStart) {
      yield* _mapAuthenticationStartedToState();
    } else if (event is AuthenticationLogin) {
      yield* _mapAuthenticationLoggedInToState();
    } else if (event is AuthenticationLogout) {
      yield* _mapAuthenticationLoggedOutInToState();
    }
  }

  Stream<AuthenticationState> _mapAuthenticationLoggedOutInToState() async* {
    yield AuthenticationFailure();
    _userRepository.signOut();
  }

  Stream<AuthenticationState> _mapAuthenticationLoggedInToState() async* {
    yield AuthenticationSuccess(await _userRepository.getUser());
  }

  Stream<AuthenticationState> _mapAuthenticationStartedToState() async* {
    final isSignedIn = await _userRepository.isSignedIn();
    if (isSignedIn) {
      final firebaseUser = await _userRepository.getUser();
      yield AuthenticationSuccess(firebaseUser);
    } else {
      yield AuthenticationFailure();
    }
  }
}
