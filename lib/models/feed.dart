class Feed {
  final UserFeed user;

  new({required this.user});

  factory Feed.fromJson(Map<String, dynamic> jsonMap) {
    return Feed(user: UserFeed.fromJson(jsonMap['user']));
  }

  Map<String, dynamic> toJson() => {'user': user.toJson()};
}

class UserFeed {
  final String name;

  factory UserFeed.fromJson(Map<String, dynamic> jsonMap) {
    return UserFeed(name: jsonMap['name']);
  }

  new({required this.name});

  Map<String, dynamic> toJson() => {'name': name};
}

class Error {
  final String error;

  factory Error.fromJson(Map<String, dynamic> jsonMap) {
    return Error(error: jsonMap['error']);
  }

  new({required this.error});

  Map<String, dynamic> toJson() => {'error': error};
}
