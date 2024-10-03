// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:test_project/core/application/services/user.service.dart';
import 'package:test_project/core/domain/entities/user_domain.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  final UserService userService;
  UserCubit(
    this.userService,
  ) : super(UserInitialState());

  Future<void> getUsers() async {
    emit(UserLoadingState());
    try {
      final response = await userService.getUsers();
      emit(UserLoadedState(response));
    } catch (e) {
      emit(UserErrorState("Não foi possível carregar. Erro: $e"));
    }
  }
}
