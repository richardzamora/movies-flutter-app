import 'package:leal_movies/src/login/models/credentials.dart';
import 'package:leal_movies/src/login/repositories/login_repository.dart';

class LocalLoginRepository extends LoginRepository {
  @override
  Future<bool> login(Credentials credentials) async {
    if (credentials.name == "maria" && credentials.password == "password") {
      return true;
    }
    if (credentials.name == "pedro" && credentials.password == "123456") {
      return true;
    }
    return false;
  }
}
