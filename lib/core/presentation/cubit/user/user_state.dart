// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'user_cubit.dart';

abstract class UserState extends Equatable {}

class UserInitialState extends UserState {
  @override
  List<Object?> get props => [];
}

class UserLoadingState extends UserState {
  @override
  List<Object?> get props => [];

  UserLoadingState();
}

class UserLoadedState extends UserState {
  final List<User> users;

  UserLoadedState(this.users);

  @override
  List<Object?> get props => [users];
}

class UserErrorState extends UserState {
  final String message;

  UserErrorState(this.message);

  @override
  List<Object?> get props => [message];
}
