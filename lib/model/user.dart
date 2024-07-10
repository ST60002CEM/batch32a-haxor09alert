import 'package:json_annotation/json_annotation.dart';

part "user.g.dart";

@JsonSerializable()
class User {
  User(this.fullname, this.email, this.password, this.phone, this.address,
      this.bio, this.gender, this.isAdmin, this.avatar,
      {this.id = ""});

  String? id;
  String? fullname;
  String? email;
  String? password;
  String? phone;
  String? address;
  String? bio;
  String? gender;
  bool? isAdmin;
  @JsonKey(name: "profile")
  String? avatar;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
