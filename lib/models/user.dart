import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  @JsonKey(name: 'first_name')
  final String firstName;
  @JsonKey(name: 'last_name')
  final String lastName;
  final String? email;
  final int? age;

  new({required this.firstName, required this.lastName, required this.email, required this.age});

  factory User.fromJson(Map<String, dynamic> jsonMap) {
    return _$UserFromJson(jsonMap);
  }

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
