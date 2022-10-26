import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:leal_movies/src/core/models/paginated_response.dart';
import 'package:leal_movies/src/core/services/http/http_service_provider.dart';
import 'package:leal_movies/src/popular_series/models/tv_serie.dart';
import 'package:leal_movies/src/popular_series/repositories/http_popular_series_repository.dart';

final popularSeriesRepositoryProvider =
    Provider<PopularSeriesRepository>((ref) {
  final httpService = ref.watch(httpServiceProvider);
  return HttpPopularSeriesRepository(httpService);
});

abstract class PopularSeriesRepository {
  Future<PaginatedResponse<TvSerie>> getPopularMovies(int page);
}
