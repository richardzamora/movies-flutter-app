import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:leal_movies/src/login/models/credentials.dart';
import 'package:leal_movies/src/login/repositories/local_login_repository.dart';

final loginRepositoryProvider = Provider<LoginRepository>((ref) {
  return LocalLoginRepository();
});

abstract class LoginRepository {
  Future<bool> login(Credentials credentials);
}
