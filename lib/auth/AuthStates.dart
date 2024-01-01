

abstract class AuthState {}

class InitialStates extends AuthState {}

class loginLoadingStates extends AuthState {}

class SucessLoginStates extends AuthState {
}

class ErrorLoginStates extends AuthState {
  final String error;

  ErrorLoginStates(this.error);
}

class SignLoadingStates extends AuthState {}

class SucessSignStates extends AuthState {}

class ErrorSignStates extends AuthState {
  final String error;

  ErrorSignStates(this.error);
}

class passwordStates extends AuthState {}