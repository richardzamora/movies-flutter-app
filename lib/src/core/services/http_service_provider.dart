import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:leal_movies/src/core/configs/configs.dart';
import 'package:leal_movies/src/core/services/http_service.dart';

final httpServiceProvider = Provider<HttpService>((ref) {
  return TMDBHttpService();
});

class TMDBHttpService extends HttpService {
  @override
  String get baseUrl => Configs.apiBaseUrl;

  @override
  Future delete() {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<Map<String, dynamic>> get(String endpoint,
      {Map<String, dynamic>? queryParameters, bool forceRefresh = false}) {
    // TODO: implement get
    throw UnimplementedError();
  }

  @override
  // TODO: implement headers
  Map<String, String> get headers => throw UnimplementedError();

  @override
  Future post(String endpoint, {Map<String, dynamic>? queryParameters}) {
    // TODO: implement post
    throw UnimplementedError();
  }

  @override
  Future put() {
    // TODO: implement put
    throw UnimplementedError();
  }
}
