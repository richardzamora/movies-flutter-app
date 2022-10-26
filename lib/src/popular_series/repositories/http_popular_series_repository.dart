import 'package:leal_movies/src/core/configs/configs.dart';
import 'package:leal_movies/src/core/models/paginated_response.dart';
import 'package:leal_movies/src/core/services/http/http_service.dart';
import 'package:leal_movies/src/popular_series/models/tv_serie.dart';
import 'package:leal_movies/src/popular_series/repositories/popular_series_repository.dart';

class HttpPopularSeriesRepository extends PopularSeriesRepository {
  final HttpService httpService;
  HttpPopularSeriesRepository(this.httpService);

  String get path => "/tv/popular";
  String get apiKey => Configs.tmdbAPIKey;
  String get language => "en-US";

  @override
  Future<PaginatedResponse<TvSerie>> getPopularMovies(int page) async {
    final responseData = await httpService.get(
      path,
      queryParameters: {'page': page, 'api_key': apiKey, "language": language},
    );

    return PaginatedResponse.fromJson(
      responseData,
      results: List<TvSerie>.from(
        (responseData['results'] as List<dynamic>).map<TvSerie>(
          (dynamic x) => TvSerie.fromJson(x as Map<String, dynamic>),
        ),
      ),
    );
  }
}
