import 'package:data/feed_repository_impl.dart';
import 'package:domain/feed_repository.dart';
import 'package:get_it/get_it.dart';

void initDependencies() {
  var getIt = GetIt.instance;
  getIt.registerLazySingleton<FeedRepository>(() => FeedRepositoryImpl());
}
