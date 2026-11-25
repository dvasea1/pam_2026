
import 'package:domain/feed_entity.dart';
class FeedDto {
  final UserFeedDto user;

  new({required this.user});

  factory FeedDto.fromJson(Map<String, dynamic> jsonMap) {
    return FeedDto(user: UserFeedDto.fromJson(jsonMap['user']));
  }

  Map<String, dynamic> toJson() => {'user': user.toJson()};

  FeedEntity toEntity() {
    return FeedEntity(user: user.toEntity());
  }
}

class UserFeedDto {
  final String name;

  factory UserFeedDto.fromJson(Map<String, dynamic> jsonMap) {
    return UserFeedDto(name: jsonMap['name']);
  }

  new({required this.name});

  Map<String, dynamic> toJson() => {'name': name};

  UserFeedEntity toEntity() {
    return UserFeedEntity(name: name);
  }
}
