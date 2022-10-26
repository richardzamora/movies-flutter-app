import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:leal_movies/src/core/models/paginated_response.dart';
import 'package:leal_movies/src/popular_series/models/tv_serie.dart';
import 'package:leal_movies/src/popular_series/repositories/popular_series_repository.dart';

final popularSeriesProvider =
    FutureProvider.family<PaginatedResponse<TvSerie>, int>(
  (ref, int pageIndex) async {
    final homeRepository = ref.watch(popularSeriesRepositoryProvider);
    return homeRepository.getPopularMovies(pageIndex);
  },
);
