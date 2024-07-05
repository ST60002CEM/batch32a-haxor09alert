import 'package:json_annotation/json_annotation.dart';

part "user.g.dart";

@JsonSerializable()
class User {
  User(
    this.fullname,
    this.email,
    this.password,
    this.avatar,
    this.phone,
  {this.id=""});

  String? id;
  String? fullname;
  String? email;
  String? password;
  String? avatar;
  String? phone;

factory User.fromJson(Map<String,dynamic> json)=> _$UserFromJson(json);

Map<String,dynamic> toJson() => _$UserToJson(this);




}
