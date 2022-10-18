import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:leal_movies/src/core/services/http_service_provider.dart';
import 'package:leal_movies/src/home/repositories/http_home_repository.dart';

final homeRepositoryProvider = Provider<HomeRepository>((ref) {
  final httpService = ref.watch(httpServiceProvider);
  return HttpHomeRepository(httpService);
});

abstract class HomeRepository {
  Future<dynamic> getPopularMovies();
}
