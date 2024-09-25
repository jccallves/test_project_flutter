part of 'theme_cubit.dart';

abstract class ThemeState {}

class InitialState extends ThemeState {}

class LoadingState extends ThemeState {
  final String message;

  LoadingState(this.message);
}

class LoadedState extends ThemeState {
  final String message;

  LoadedState(this.message);
}

class ErrorState extends ThemeState {
  final String message;

  ErrorState(this.message);
}
