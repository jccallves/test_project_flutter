import 'package:test_project/core/domain/entities/user_domain.dart';

abstract class IUserRepository {
  Future<List<User>> getUsers();
}
