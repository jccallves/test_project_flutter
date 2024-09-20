abstract class CubitState {}

class InitialState extends CubitState {}

class LoadingState extends CubitState {
  final String message;

  LoadingState(this.message);
}

class LoadedState extends CubitState {
  final String message;

  LoadedState(this.message);
}

class ErrorState extends CubitState {
  final String message;

  ErrorState(this.message);
}
