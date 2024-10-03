// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:test_project/core/application/services/exceptions/not_found_exception.dart';
import 'package:test_project/core/application/services/user.service.dart';
import 'package:test_project/core/data/repositories/iuser_repository.dart';
import 'package:test_project/core/domain/entities/user_domain.dart';

class UserRepository extends IUserRepository {
  final UserService _userService;

  UserRepository(
    this._userService,
  );

  @override
  Future<List<User>> getUsers() async {
    final dynamic response = _userService.getUsers();

    if (response.statusCode == 200) {
      final List<User> users = [];

      final body = jsonDecode(response.body) as List;

      body.map((item) {
        final User user = User.fromJson(item);
        users.add(user);
      }).toList();

      return users;
    } else if (response.statusCode == 404) {
      throw NotFoundExcpetion("URL não encontrada");
    } else {
      throw Exception("Não foi possível carregar os usuários");
    }
  }
}
