// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:test_project/core/application/configs/environment.dart';
import 'package:test_project/core/application/services/exceptions/not_found_exception.dart';
import 'package:test_project/core/application/services/http/http_client.dart';
import 'package:test_project/core/domain/entities/user_domain.dart';

class UserService {
  final String _baseUrl = '${Environment().apiUrl}/users';
  final HttpClient http;
  UserService({required this.http});

  Future<dynamic> getUsers() async {
    final response = await http.get(url: _baseUrl);

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
