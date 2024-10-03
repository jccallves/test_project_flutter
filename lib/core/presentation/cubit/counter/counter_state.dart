abstract class CounterState {}

class InitialState extends CounterState {}

class LoadingState extends CounterState {}

class LoadedState extends CounterState {}

class ErrorState extends CounterState {
  final String message;

  ErrorState(this.message);
}
