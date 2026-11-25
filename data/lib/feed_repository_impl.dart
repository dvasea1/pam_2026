import 'package:domain/feed_entity.dart';
import 'package:domain/feed_repository.dart';

class FeedRepositoryImpl implements FeedRepository {
  @override
  Future<FeedEntity> getFeed() async {
    await Future.delayed(Duration(seconds: 3));
    return FeedEntity(user: UserFeedEntity(name: 'Vasile'));
  }
}
