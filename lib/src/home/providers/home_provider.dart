import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:leal_movies/src/home/repositories/home_repository.dart';

final homeProvider = Provider<HomeProvider>(
  (ref) {
    final homeRepository = ref.watch(homeRepositoryProvider);
    return HomeProvider(homeRepository);
  },
);

class HomeProvider {
  HomeRepository homeRepository;
  HomeProvider(this.homeRepository);
}
