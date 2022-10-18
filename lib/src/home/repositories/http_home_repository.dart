import 'package:leal_movies/src/core/services/http_service.dart';
import 'package:leal_movies/src/home/repositories/home_repository.dart';

class HttpHomeRepository extends HomeRepository {
  final HttpService httpService;
  HttpHomeRepository(this.httpService);

  @override
  Future getPopularMovies() {
    // TODO: implement getPopularMovies
    throw UnimplementedError();
  }
}
